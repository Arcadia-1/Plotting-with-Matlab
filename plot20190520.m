clear;close all;clc;
C=linspace(1,30,1000);
Gr=115;
Gc=19;
b=1;
s=0.2;
q=5.4;
R = Gr*C.^(s+q)./(C.^q+Gc.^q)+b;
Gr=85;
R2 = Gr*C.^(s+q)./(C.^q+Gc.^q)+b;

figure(1);hold on;
plot(C,R,'k','Linewidth',3);
plot(C,R2,'--k','Linewidth',2);
set(gca,'XTick',[],'YTick',[]);

a = annotation('arrow',[0.82 0.82],[0.6 0.8]);
a.LineWidth = 4;
a.HeadStyle = 'cback2';

text(25,220,'\fontsize{18}Rmax');

ylabel('response','Fontsize',18);
title('Response Gain','Fontsize',18)
axis([0 35 0 250]);
