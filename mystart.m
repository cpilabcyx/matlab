% t=[ t(1),t(2),t(3),t(4) ]
% f1左端面a1x+b1y+c1z+d1=0;
% 左直线（a2,b2,c2,x2,y2,z2）（x1,y1,z1）
% f2右端面a3x+b3y+c3z+d3=0;
% 右直线（a4,b4,c4,x3,y3,z3）（x4,y4,z4）
% （x5,y5,z5）（x6,y6,z6）
% （x7,y7,z7）（x8,y8,z8）
% （x9,y9,z9）（x10,y10,z10）
% （x11,y11,z11）（x12,y12,z12）
global  x2;
global  y2;
global  z2;

global x3;
global y3;
global z3;

global  x4;
global  y4;
global  z4;

global  x5;
global  y5;
global  z5; 

global  x6;
global  y6;
global  z6;

global  x7;
global  y7; 
global  z7;

global  x8;
global  y8;
global  z8;

global  x9; 
global  y9;
global  z9;

global  x10;
global  y10;
global  z10; 

global  y11;
global  z11;
global  x11;

global  x12;
global  y12;
global  z12;

global a1;
global b1;
global c1;
global d1;

global a2;
global b2;
global c2;

global a3;
global b3;
global c3;

global d3;
global a4;
global b4;
global c4;
global v;

global r5;
global r7;
global r9;
global r11;

x2=  0;
y2 = 0;
z2 = 0;
%定位孔点对
x5 = 0;
y5 = 0;
z5 = 2;

x7 = 2;
y7 = 0;
z7 = 0;

x9 = 0;
y9 = 0;
z9 = -2;

x11 = -2;
y11 = 0;
z11 = 0;

%左面
a1 = 0;
b1 = 1;
c1 = 0;
d1 = 0;

%左轴
a2 = 0;
b2 = 1;
c2 = 0;

%右面
a3 = 0;
b3 = 1;
c3 = 0;
d3 = 0;

%右轴
a4 = 0;
b4 = 1;
c4 = 0;

v=[0,1,0];
v=v/norm(v);

r5=0.2; %r5=r5L+r5R-Llr  c++程序传过来
r7=0.2;
r9=0.2;
r11=0.25;

x3 = 0;
y3 = 0;
z3 = 0.1;

x4 = 0.2;
y4 = 4;
z4 = 0;

x6 = 0;
y6 = 0.1;
z6 = 2;

x8 = 2;
y8 = 0.1;
z8 = 0;

x10 = 0;
y10 = 0;
z10 = -2.1;

x12 = -2;
y12 = 0;
z12 = 0.1;

% t0=[1;0;0;1;   0;0.47;0.8660;2;   0;-0.8660;0.47;3];
t0=[0.9,0.2,0.387,0];
lb=t0-0.5;
ub=t0+0.5;

% opt=optimset('MaxFunEvals',10000,'FunctionTolerance',1.5,'ConstraintTolerance',1);
 opt=optimset('MaxFunEvals',4000,'MaxIter',10000,'TolFun',1e-10,'TolCon',4);
%x = fminimax(fun,x0,A,b,Aeq,beq,lb,ub,nonlcon,options)
t = fminimax(@myfun1,t0,[],[],[],[],lb,ub,@mycon1,opt);

%目标函数，极小化极大
function f = myfun1(t)
global  x2;
global  y2;
global  z2;

global x3;
global y3;
global z3;

global  x4;
global  y4;
global  z4;
global  v;

lvec=quatrotate([t(1),t(2),t(3),t(4)],[x3,y3,z3])-[x2,y2,z2];
rvec=quatrotate([t(1),t(2),t(3),t(4)],[x4,y4,z4])-[x2,y2,z2];

f(1)=norm(cross(lvec,v));
f(2)=norm(cross(rvec,v));
end

%约束函数
function [c,ceq ]= mycon1(t)
global  x5;
global  y5;
global  z5; 
global  x6;
global  y6;
global  z6;
global  x7;
global  y7; 
global  z7;
global  x8;
global  y8;
global  z8;
global  x9; 
global  y9;
global  z9;
global  x10;
global  y10;
global  z10; 
global  y11;
global  z11;
global  x11;
global  x12;
global  y12;
global  z12;
global r5;
global r7;
global r9;
global r11;

%四元数模长为1
ceq(1)=t(1)*t(1)+t(2)*t(2)+t(3)*t(3)+t(4)*t(4)-1;

%相应的定位孔配合约束条件
c(1)=sqrt(norm(quatrotate([t(1),t(2),t(3),t(4)],[x6,y6,z6])-[x5,y5,z5]))-r5;
c(2)=sqrt(norm(quatrotate([t(1),t(2),t(3),t(4)],[x8,y8,z8])-[x7,y7,z7]))-r7;
c(3)=sqrt(norm(quatrotate([t(1),t(2),t(3),t(4)],[x10,y10,z10])-[x9,y9,z9]))-r9;
c(4)=sqrt(norm(quatrotate([t(1),t(2),t(3),t(4)],[x12,y12,z12])-[x11,y11,z11]))-r11;
end
