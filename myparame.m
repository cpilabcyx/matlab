% t=[ t(11),t(12),t(1)3,t(1)4;
%     t(2)1,t(2)2,t(2)3,t(2)4;
%     t(3)1,t(3)2,t(3)3,t(3)4 ]
% f1�����a1x+b1y+c1z+d1=0;
% ��ֱ�ߣ�a2,b2,c2,x2,y2,z2����x1,y1,z1��
% f2�Ҷ���a3x+b3y+c3z+d3=0;
% ��ֱ�ߣ�a4,b4,c4,x3,y3,z3����x4,y4,z4��
% ��x5,y5,z5����x6,y6,z6��
% ��x7,y7,z7����x8,y8,z8��
%t(11) t(12) t(1)3
%���߶˵�
x2 = 0;
y2 = 0;
z2 = 0;

x3 = 0;
y3 = 0;
z3 = 0;

x4 = 0;
y4 = 4;
z4 = 0;

%��λ�׵��
x5 = 0;
y5 = 0;
z5 = 2;
x6 = 0;
y6 = 0;
z6 = 2;

x7 = 2;
y7 = 0;
z7 = 0;
x8 = 2;
y8 = 0;
z8 = 0;

x9 = 0;
y9 = 0;
z9 = -2;
x10 = 0;
y10 = 0;
z10 = -2;

x11 = -2;
y11 = 0;
z11 = 0;
x12 = -2;
y12 = 0;
z12 = 0;

%����
a1 = 0;
b1 = 1;
c1 = 0;
d1 = 0;

%����
a2 = 0;
b2 = 1;
c2 = 0;

%����
a3 = 0;
b3 = 1;
c3 = 0;
d3 = 0;

%����
a4 = 0;
b4 = 1;
c4 = 0;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

r5=0.2;
r7=0.2;
r9=0.2;
r11=0.25;

pp3=[x3,y3,z3,1];
pp4=[x4,y4,z4,1];
pp6=[x6,y6,z6,1];
pp8=[x8,y8,z8,1];
pp10=[x10,y10,z10,1];
pp12=[x12,y12,z12,1];

v=[0,1,0];
v=v/norm(v);

% 1     0       0      0
% 0   cost   sint   0
% 0  -sint   cost   0
% 0      0      0      1
concep=[ 1,   0,      0,     1;
         0,  0.5, sqrt(3/4), 2;
         0, -sqrt(3/4), 0.5, 3];

p3=concep*pp3';
p4=concep*pp4';
p6=concep*pp6';
p8=concep*pp8';
p10=concep*pp10';
p12=concep*pp12';
     