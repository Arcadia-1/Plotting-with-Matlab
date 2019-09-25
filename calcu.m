clear;close all;clc;
t=0:0.1:20;
y = 1.3.^t;
y2 = 2*log(10*t);
hold on;
plot(t,y);
plot(t,y2,'b');
bar = 12;
li = linspace(bar,bar,length(t));

plot(t,li,'--r');

axis([0 20 0 100]);

% dim1=[0.7 0.63 0.05 0.1];
% annotation('ellipse',dim1)
text(16,15,'Threshold');
text(12,58,'Technology');
text(16,5.5,'Opening');

xlabel('Century');
xlabel('Opening Score');
title('Opening-Time Curve')


C=33e-6;
%R2=1/(2*log(2)*C);
R2=27e3;
R1=1.5e3;
T = log(2)*(R1+2*R2)*C;
DC = (R1+R2)/(R1+2*R2);

a1=1;
a2=5.09;
f=4.9*a1/(a1+a2);
f2=4.9*a2/(a1+a2);

% 
C5=15e-12;
C3=0.1e-6;
L=3e-6;
w=2*pi*10e6;
f=1/(sqrt(L*(C5+C3))*2*pi);
X=1/(1i*w*C3)+1/(1/(1i*w*L)+1i*w*C5);
X=1/(w*C3)

R1=1e3;
R2=51;
5*R2/(R1+R2);

RS=10;
Q=f/(2*pi)*L/RS;

%fp = 2*pi*sqrt(1/(L*C)-(RS/L)^2)
% Q=1/RS*sqrt(L/C)
% 

% 
% LS= 0.0126;
% CS= 2e-14;
% RS= 12;
% CO= 5e-11;
% CL=11e-12;
LS= 0.00254648;
CS= 9.9718e-14;
RS= 6.4;
CL=11e-12;
CO = [100,1,1e-2,1e-15,1e-100];
for i = 1:length(CO)
    f_crystal=1/(2*pi*sqrt(LS*CS*(CO(i)+CL)/(CS+CO(i)+CL)));
    %disp(f_crystal)
end
%f_crystal2=1/(2*pi*sqrt(LS*CS*CO/(CS+CO)))*(1-CS*CL/(2*CO^2))

% C1=20e-12;
% C2=20e-12;
% CL=C1*C2/(C2+C1);
% f_circuit = f_crystal*(1+CS/(2*CO+2*CL));
% 
% Rb1=3.9e3;
% Rb2=6.8e3;
% Vbb=5*Rb2/(Rb1+Rb2);
% Rb=Rb1*Rb2/(Rb1+Rb2);
% beta=220;
% Vbe=0.7;
% RE=1.5e3;
% Ic=(Vbb-Vbe)/(RE+(Rb+RE)/beta)

f=10e6;
C=33e-12;
1/(2*pi*f*C);
