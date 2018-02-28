% 
% %中给定非线性不等式约束c(x)或等式约束ceq(x)，fminimax函数要求c(x) <= 0且ceq(x) = 0。
% % t=[ t11,t12,t13,t14;
% %     t21,t22,t23,t24;
% %     t31,t32,t33,t34 ]
% % f1左端面a1x+b1y+c1z+d1=0;
% % 左直线（a2,b2,c2,x2,y2,z2）（x1,y1,z1）
% % f2右端面a3x+b3y+c3z+d3=0;
% % 右直线（a4,b4,c4,x3,y3,z3）（x4,y4,z4）
% % （x5,y5,z5）（x6,y6,z6）
% % （x7,y7,z7）（x8,y8,z8）
% % （x9,y9,z9）（x10,y10,z10）
% % （x11,y11,z11）（x12,y12,z12）
% %t11 t12 t13
% %[t1x6+t2y6+t3z6+t4, t5x6+t6y6+t7z6+t8, t9x6+t10y6+t11z6+t12]
% 
% function [c,ceq] = mycon(t1,t2,t3,t4,t5,t6,t7,t8,t9,t10,t11,t12)
% ceq(1)=a1*(t1*x6+t2*y6+t3*z6+t4)+b1*(t5*x6+t6*y6+t7z*6+t8)+c1*(t9*x6+t10*y6+t11*z6+t12)+d1;
% ceq(2)=a1*(t1*x8+t2*y8+t3*z8+t4)+b1*(t5*x8+t6*y8+t7*z8+t8)+c1*(t9*x8+t10*y8+t11*z8+t12)+d1;
% ceq(3)=a1*(t1*x10+t2*y10+t3*z10+t4)+b1*(t5*x10+t6*y10+t7*z10+t8)+c1*(t9*x10+t10*y10+t11*z10+t12)+d1;
% 
% c(1)=sqrt(norm([t1x6+t2y6+t3z6+t4-x5, t5x6+t6y6+t7z6+t8-y5, t9x6+t10y6+t11z6+t12-z5]))-r5;
% c(2)=sqrt(norm([t1x8+t2y8+t3z8+t4-x7, t5x8+t6y8+t7z8+t8-y7, t9x8+t10y8+t11z8+t12-z7]))-r7;
% c(3)=sqrt(norm([t1x10+t2y10+t3z10+t4-x9, t5x10+t6y10+t7z10+t8-y9, t9x10+t10y10+t11z10+t12-z9]))-r9;
% c(4)=sqrt(norm([t1x12+t2y12+t3z12+t4-x11, t5x12+t6y12+t7z12+t8-y11, t9x12+t10y12+t11z12+t12-z11]))-r11;
% end
