%   Noah Provenzano
%   EGR-120 Noble
%   4/3/2020
%   HW8 P2

clear
clc


Diameter = [1.5, 2.6, 4.4, 7.0, 10, 16, 22, 31]
Area = [1.6, 5.2, 16.2, 41.6, 70.2, 171, 342, 740]

Dlog = log10(Diameter);
Alog = log10(Area);


p = polyfit(Dlog, Alog, 1);

% Create perameters for the line of best fit
x = linspace(1, 100, 100);


fity = polyval(p,log10(x));


LBF = (0.28)*((x).^2.3);


legstr = {'Datapoints','Hand calculated line of best fit','matlab log polyfit'}


figure
loglog(Diameter,Area,'.k',      x, LBF,'-g',     x, 10.^(fity))


legend(legstr,'location','northwest');
title('Change in area with different diameters --N. Provenzano')
xlabel('Diameter D, ft')
ylabel('Area A, ft^2')
grid on



figure
plot(Diameter,Area,'.k',     x, LBF,'-g',     x, 10.^(fity))

axis([0,40,0,1000])
legend(legstr,'location','northwest');
title('Change in area with different diameters --N. Provenzano')
xlabel('Diameter D, ft')
ylabel('Area A, ft^2')
grid on

