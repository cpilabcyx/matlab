p=[1 2 3 4];
q=[4,3,2,1];
quatmultiply(p,q);
% p=[1 2 3 4];
% q=[4,3,2,1];
% ģ��Modulus����quatmod(p)    %  5.4772
% ������Norm����quatnorm(p)    0
% ��λ����Normalize����quatnormalize(p)    %  0.1826    0.3651    0.5477    0.7303
% ���棨Inverse����quatinv(p)    %0.0333   -0.0667   -0.1000   -0.1333
% ��Ԫ��������quatdivide(q,p)    %0.6667         0   -0.6667   -0.3333
% ��Ԫ���˷���quatmultiply(p,q)  % -12     6    24    12
% ������Ԫ����quatconj(p)      % 1    -2    -3    -4
% ������Ϊע�͡�
% ���⻹����ת����quatrotate(��Ԫ��,[x;y;z])����Ԫ����ŷ���ǻ����ĺ���quat2euler��euler2quat��
quatrotate(p,[1;2;3]);