clear;close all;clc;

%% ͼ��
figure;hold on;grid on;

%% ���������
xlabel('SNR/dB','Fontsize',18);
ylabel('����(bit/s/Hz)','Fontsize',18);
title('����ŵ��������Ƚ�','Fontsize',18)

%% ����
t = linspace(0,20,1000);
X = 2*t+sin(t);
Y = 2*t+cos(t);
plot(t,X,'g-',t,Y,'r-');

k = linspace(0,20,1000);
U = 2*k+sin(2*k);
V = 2*k+cos(3*k);
plot(k,U,'k-',k,V,'c-');

%% ͼ��
legend('R=0 CSIδ֪','R=0.95 CSIδ֪','R=0 CSI��֪','R=0.95 CSI��֪','Location','Best');

%% ԲȦ��ͷ��ע
dim1=[0.7 0.63 0.05 0.1];
annotation('ellipse',dim1)
annotation('arrow',[0.64 0.71],[0.71 0.71])
text(11,32,'\fontsize{18}R=0');

dim2=[0.8 0.6 0.05 0.1];
annotation('ellipse',dim2)
annotation('arrow',[0.83 0.83],[0.5 0.6])
text(18,20,'\fontsize{18}R=0.95');