close all;clear all;clc;
tcpipClient = tcpip('10.129.10.244',30000,'NetworkRole','Client')
set(tcpipClient,'InputBufferSize',100);
set(tcpipClient,'Timeout',30);
fopen(tcpipClient);
rawData = fread(tcpipClient,10,'char');
fclose(tcpipClient);

% S = regexp('11,222,343.435,5465', ',', 'split')
data=str2num(rawData);

set(tcpipClient,'OutputBufferSize',48);
fopen(tcpipClient);
fwrite(tcpipClient,data(:),'char');
fclose(tcpipClient);