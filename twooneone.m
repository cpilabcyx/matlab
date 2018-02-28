% t=[ t(1),t(2),t(3),t(4) ]
% f1左端面a1x+b1y+c1z+d1=0;
% 左直线（a2,b2,c2,x2,y2,z2）（x1,y1,z1）
% f2右端面a3x+b3y+c3z+d3=0;
% 右直线（a4,b4,c4,x3,y3,z3）（x4,y4,z4）
% （x5,y5,z5）（x6,y6,z6）
% （x7,y7,z7）（x8,y8,z8）
% （x9,y9,z9）（x10,y10,z10）
% （x11,y11,z11）（x12,y12,z12）
global data;
tcpipClient = tcpip('10.129.10.244',30000,'NetworkRole','Client')
set(tcpipClient,'InputBufferSize',1000);
set(tcpipClient,'Timeout',30);
fopen(tcpipClient);
rawData = fread(tcpipClient,1000,'char');
fclose(tcpipClient);

data=str2num(rawData);
%data(1):p1(x1,y1,z1)--p12(x12,y12,z12):data(36)
%a1 b1 c1 d1左面data(40)    a2 b2 c2 0左轴data(44)  a3 b3 c3 d3右面data(48) 
%a4 b4 c4 0右轴data(52)    r5 r7 r9 r11data(56) 

v = [data(41), data(42), data(43)];
v = v / norm(v);

t0=[1,0,0,0];%不用传过来
lb=t0-0.5;
ub=t0+0.5;

% opt=optimset('MaxFunEvals',10000,'FunctionTolerance',1.5,'ConstraintTolerance',1);
 opt=optimset('MaxFunEvals',4000,'MaxIter',10000,'TolFun',1e-10,'TolCon',4);
%x = fminimax(fun,x0,A,b,Aeq,beq,lb,ub,nonlcon,options)
t = fminimax(@myfun1,t0,[],[],[],[],lb,ub,@mycon1,opt);

%目标函数，极小化极大
function f = myfun1(t)
global data;
lvec=quatrotate([t(1),t(2),t(3),t(4)],[data(7),data(8),data(9)])-[data(4),data(5),data(6)];
rvec=quatrotate([t(1),t(2),t(3),t(4)],[data(10),data(11),data(12)])-[data(4),data(5),data(6)];

f(1)=norm(cross(lvec,v));
f(2)=norm(cross(rvec,v));
end

%约束函数
function [c,ceq ]= mycon1(t)
global data;
%四元数模长为1
ceq(1)=t(1)*t(1)+t(2)*t(2)+t(3)*t(3)+t(4)*t(4)-1;

%相应的定位孔配合约束条件
c(1)=sqrt(norm(quatrotate([t(1),t(2),t(3),t(4)],[data(16),data(17),data(18)])-[data(13),data(14),data(15)]))-data(53);
c(2)=sqrt(norm(quatrotate([t(1),t(2),t(3),t(4)],[data(22),data(23),data(24)])-[data(19),data(20),data(21)]))-data(54);
c(3)=sqrt(norm(quatrotate([t(1),t(2),t(3),t(4)],[data(28),data(29),data(30)])-[data(25),data(26),data(27)]))-data(55);
c(4)=sqrt(norm(quatrotate([t(1),t(2),t(3),t(4)],[data(34),data(35),data(36)])-[data(31),data(32),data(33)]))-data(56);
end
