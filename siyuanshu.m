p=[1 2 3 4];
q=[4,3,2,1];
quatmultiply(p,q);
% p=[1 2 3 4];
% q=[4,3,2,1];
% 模（Modulus）：quatmod(p)    %  5.4772
% 范数（Norm）：quatnorm(p)    0
% 单位化（Normalize）：quatnormalize(p)    %  0.1826    0.3651    0.5477    0.7303
% 求逆（Inverse）：quatinv(p)    %0.0333   -0.0667   -0.1000   -0.1333
% 四元数除法：quatdivide(q,p)    %0.6667         0   -0.6667   -0.3333
% 四元数乘法：quatmultiply(p,q)  % -12     6    24    12
% 共轭四元数：quatconj(p)      % 1    -2    -3    -4
% 计算结果为注释。
% 另外还有旋转函数quatrotate(四元数,[x;y;z])、四元数和欧拉角互换的函数quat2euler、euler2quat。
quatrotate(p,[1;2;3]);