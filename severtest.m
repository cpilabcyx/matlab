%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% server
close all;clear all;clc;
% data =imread('img.jpg');
% data=im2double(data);
data=[1,2,3,4,5,6];
s = whos('data')
s.size
s.bytes
tcpipServer = tcpip('10.129.10.249',30000,'NetworkRole','Server');
set(tcpipServer,'OutputBufferSize',s.bytes);
fopen(tcpipServer);
fwrite(tcpipServer,data(:),'double');
fclose(tcpipServer);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%tcpipClient = tcpip('10.129.10.249',40000,'NetworkRole','Server');
set(tcpipServer,'InputBufferSize',s.bytes);
fopen(tcpipServer);
datares=fread(tcpipServer,6,'double');
fclose(tcpipServer);