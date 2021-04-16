%   Noah Provenzano
%   EGR-120 Noble
%   4/4/2020
%   HW8 P4

clear
clc


Time = [0.0001, 0.001, 0.002, 0.003, 0.004, 0.005]
Concentration = [0.220, 0.150, 0.100, 0.070, 0.045, 0.030]

Clog = log(Concentration);

p = polyfit(Time, Clog, 1);

x = linspace(0.0001, 0.006, 100);


fity = polyval(p,x);


LBF = (0.22)*(e.^((-400)*(x)));


legstr = {'Datapoints','Hand calculated line of best fit','matlab semilog-y polyfit'}


figure
semilogy(Time,Concentration,'.k',    x, LBF,'-r',    x, exp(fity)) 


legend(legstr,'location','northeast');
title('Reduction of chemical reactants overtime during reaction --N. Provenzano')
xlabel('Time T, s')
ylabel('Concentration C, moles')
grid on



figure
plot(Time,Concentration,'.k',     x, LBF,'-r',     x, exp(fity))


legend(legstr,'location','northeast');
title('Reduction of chemical reactants overtime during reaction --N. Provenzano')
xlabel('Time T, s')
ylabel('Concentration C, moles')
grid on
