function f = myfun1(t)

x2 = 0;
y2 = 0;
z2 = 0;

%��λ�׵��
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

v=[0,1,0];
v=v/norm(v);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
r5=0.2;
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

%lvec=[t(1)*x3+t(2)*y3+t(3)*z3+t(4)-x2, t(5)*x3+t(6)*y3+t(7)*z3+t(8)-y2, t(9)*x3+t(10)*y3+t(11)*z3+t(12)-z2];
lvec=quatrotate([t(1),t(2),t(3),t(4)],[x3,y3,z3])-[x2,y2,z2];

%rvec=[t(1)*x4+t(2)*y4+t(3)*z4+t(4)-x2, t(5)*x4+t(6)*y4+t(7)*z4+t(8)-y2, t(9)*x4+t(10)*y4+t(11)*z4+t(12)-z2];
rvec=quatrotate([t(1),t(2),t(3),t(4)],[x4,y4,z4])-[x2,y2,z2];

f(1)=norm(cross(lvec,v));
f(2)=norm(cross(rvec,v));
end
