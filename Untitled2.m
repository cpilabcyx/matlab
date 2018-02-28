  up= textread('PlanePoint2.txt');%三维点
  err_out= textread('err_plane2.txt');%误差txt
   err_out= err_out;
 x=up(:,1);
 y=up(:,2);
 z=up(:,3);
 
 %max:0.829911min:-1.05023var0.1789
 %max:0.784398min:-1.14664var0.1802
 %max:0.825662min:-1.07877var0.1803
 
 %plane  max:1.79947min:-1.56271
max=1.79947;
min=-1.56271;
 
 c=zeros(size(err_out));%获得o阵大小和x相同
 
 for i=1:1:size(err_out)
     if err_out(i)>0
         t=err_out(i)/max;
         c(i,1)=t;%红色
         c(i,2)=1-t;%绿色
     end
     if err_out(i)<=0
          t=err_out(i)/min;
         c(i,2)=1-t;%绿色
         c(i,3)=t;%蓝色
     end
 end
scatter3(x, y, z, 3 ,c);
%   d=norm(cross(V,[X(i,j),Y(i,j),Z(i,j)]-PP))/norm(V);
%  
%   [X,Y]=meshgrid(-300:10:300,-300:10:300);
% Z=griddata(x,y,z,X,Y);
% 
% 
% surf(X,Y,Z);
% hold on;
%  up= textread('down.txt');
%   x=up(:,1);
%  y=up(:,2);
%  z=up(:,3);
%  
%   [X,Y]=meshgrid(-300:10:300,-300:10:300);
% Z=griddata(x,y,z,X,Y);
% surf(X,Y,Z);
%in= textread('in.txt');