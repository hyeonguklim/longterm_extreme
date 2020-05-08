clear;clc;close all;

MCS = load('mat_files\MCS_100000.mat');
IS = load('mat_files\IS_100000.mat');

figure();hold on;
for ii = 1:10
    plot(MCS.z((ii-1)*10000+2:ii*10000+1),MCS.exprob((ii-1)*10000+2:ii*10000+1),'r-','linewidth',1);
    plot(IS.z(1,(ii-1)*10000+1:ii*10000),IS.exprob(1,(ii-1)*10000+1:ii*10000),'b--','linewidth',1);
end
set(gca,'yscale','log',...
    'box','on',...
    'yscale','log',...
    'ticklabelinterpreter','latex',...
    'ticklength',[.02 .02],...
    'fontsize',15,...
    'ylim',[1e-4 1])
xlabel('$z~(m)$','interpreter','latex')
ylabel('$G_z(z)$','interpreter','latex')
xtickformat('%.1f')