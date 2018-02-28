% function f = myfun(t)
% 
% % t=[ t11,t12,t13,t14;
% %     t21,t22,t23,t24;
% %     t31,t32,t33,t34 ]
% %点到直线距离f1左端面a1x+b1y+c1z+d1=0;
% % 左直线（a2,b2,c2,x2,y2,z2）（x1,y1,z1）
% % f2右端面a3x+b3y+c3z+d3=0;
% % 右直线（a4,b4,c4,x3,y3,z3）（x4,y4,z4）
% % （x5,y5,z5）（x6,y6,z6）
% % （x7,y7,z7）（x8,y8,z8）
% %t11 t12 t13
% % 向量叉积(a1,a2,a3)X(b1,b2,b3)?=(a 2 b 3 ?a 3 b 2 ) ? i +(a 3 b 1 ?a 1 b 3 ) ? j +(a 1 b 2 ?a 2 b 1 ) ? k ?
% 
% v=[a2,b2,c2];
% v=v/norm(v);
% 
% x3=a11x3+a12y3+a13z3+a14;
% y3=a21x3+a22y3+a23z3+a24;
% z3=a31x3+a32y3+a33z3+a34;
% lvec=[x3-x2,y3-y2,z3-z2];
% rvec=[x4-x2,y4-y2,z4-z2];
% 
% lvec=[t1*x3+t2*y3+t3*z3+t4-x2, t5*x3+t6*y3+t7*z3+t8-y2, t9*x3+t10*y3+t11*z3+t12-z2];
% rvec=[t1*x4+t2*y4+t3*z4+t4-x2, t5*x4+t6*y4+t7*z4+t8-y2, t9*x4+t10*y4+t11*z4+t12-z2];
% 
% f(1)=norm(cross(lvec,v));
% f(2)=norm(cross(rvec,v));