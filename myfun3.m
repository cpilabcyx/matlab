function f = myfun3(myfun1,lb,ub,mycon1,opt)
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
t0=[0.9,0.2,0.387,0];
f = fminimax(myfun1,t0,[],[],[],[],lb,ub,mycon1,opt);
end


