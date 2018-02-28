 up= textread('up.txt');
 x=up(:,1);
 y=up(:,2);
 z=up(:,3);
 
 PP=[1,2,3];%原点
 V=[4,5,6];%轴线
 
 [X,Y]=meshgrid(0:10:1000,0:10:1000);
Z=griddata(x,y,z,X,Y);

c=zeros(size(Z));%获得o阵大小和x相同

for i=1:1:length(c(1,:))
   for j=1:1:length(c(:,1))
       d=norm(cross(V,[X(i,j),Y(i,j),Z(i,j)]-PP))/norm(V);
       
       c(i,j,1)=0.9;%红色
       c(i,j,2)=0.1;%绿色
       c(i,j,3)=0.1;%蓝色
   end
end


surf(X,Y,Z,c);