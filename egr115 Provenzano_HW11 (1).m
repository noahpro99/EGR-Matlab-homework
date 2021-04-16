%   Noah Provenzano
%   EGR-120 Noble
%   5/5/2020
%   HW11
%   Program to plot the preformance of a rubber band powerd vehicle with user inputs

clear; clc %garbage truck


% setup variables 
i=1;
question =1;
distanc = [];
windings = [];

% figure out units
units = input('What units did your team use?: ','s');

% loop until user is done inputing data
while question ~= 0
    
    question= input('How many rubber band windings did you use? Enter 0 if done: ');
    
    if question > 0
        % put in the data point
        windings(i) = question;
        distanc(i)= input('How far did it travel?: ');
    endif
    
    %increase index for arrays
    i=i+1;

end





% plot the data
figure
plot(windings,distanc, windings, distanc, '.k')

title('Preformance of rubber band powered car --N. Provenzano')
xlabel('Windings W, rotations')
ylabel(['Distance D, ' num2str(units)])
grid onsss