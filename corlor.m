 up= textread('up.txt');
 x=up(:,1);
 y=up(:,2);
 z=up(:,3);
 
 PP=[1,2,3];%ԭ��
 V=[4,5,6];%����
 
 [X,Y]=meshgrid(0:10:1000,0:10:1000);
Z=griddata(x,y,z,X,Y);

c=zeros(size(Z));%���o���С��x��ͬ

for i=1:1:length(c(1,:))
   for j=1:1:length(c(:,1))
       d=norm(cross(V,[X(i,j),Y(i,j),Z(i,j)]-PP))/norm(V);
       
       c(i,j,1)=0.9;%��ɫ
       c(i,j,2)=0.1;%��ɫ
       c(i,j,3)=0.1;%��ɫ
   end
end


surf(X,Y,Z,c);