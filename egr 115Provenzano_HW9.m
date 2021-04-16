%   Noah Provenzano
%   EGR-120 Noble
%   4/13/2020
%   HW9
%   Program to detirmine the color of light with wavelength determined by the user

clear; clc %garbage truck

% The user inputs wavelength
Wavelength = input('Input wavelength in nm: ');

% The light is visible unless last statement is true
Visible = true;

% Detirmine the color of the light
if Wavelength >= 400 && Wavelength <= 469
    Color = 'Violet';
elseif Wavelength >= 470 && Wavelength <= 549
    Color = 'Blue';
elseif Wavelength >= 550 && Wavelength <= 599
    Color = 'Green';
elseif Wavelength >= 600 && Wavelength <= 629
    Color = 'Yellow';
elseif Wavelength >= 630 && Wavelength <= 664
    Color = 'Orange';
elseif Wavelength >= 665 && Wavelength <= 699
    Color = 'Red';

% Check if the light is not in the visible specurum    
elseif Wavelength < 400 || Wavelength > 700
    Color = 'Wavelength is outside the visible light spectrum';
    Visible = false;
endif


% Output the result
if Visible == true
    fprintf('A Wavelength of %dnm would be the color %s\n', Wavelength, Color)
else
    fprintf(Color)
endif