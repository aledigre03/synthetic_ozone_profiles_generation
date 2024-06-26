% Profile creation

close all;
clear all;

longitude = zeros(1, 64);
latitude = [85.8, 80.3, 74.7, 69.2, 63.7, 58.1, 52.6, 47.1, 41.5, 36.0, 30.5, 24.9, ...
            19.4, 13.8, 8.3, 2.8, -2.8, -8.3, -13.8, -19.4, -24.9, -30.5, -36.0, ...
            -41.5, -47.1, -52.6, -58.1, -63.7, -69.2, -74.7, -80.3, -85.8];
altitude = [30.519, 20.291, 16.291, 13.574, 11.455, 9.687, 8.161, 6.817, 5.622, ...
            4.556, 3.607, 2.768, 2.035, 1.407, 0.886, 0.478, 0.191, 0.040]
Ozone = zeros(1, 18);
O2 = zeros(1, 18);

%O3 details

Z1a= 2.8;
Z1b=12;
Z1c=40;
Z1d=-25;
Z1e=2;

Z2a=9.5;
Z2b=90;
Z2c=60;
Z2d=-20;
Z2e=6;

Z3a=5.8;
Z3b=-55;
Z3c=60;
Z3d=-22;
Z3e=6;

% Populate the longitude array
for i = 1:32
  longitude(i) = 180 + (i - 1) * (360 / 64);
endfor

for i = 33:64
  longitude(i) = (i - 33) * (360 / 64);
endfor

% Populate ozone array, from e12molecules/cm^3 to kg/m^3 for first latitude value

for j = 1:18
 
 Ozone(j)=(Z1a*(exp(-((latitude(1)+Z1b)/Z1c).^2-((altitude(j)+Z1d)/Z1e).^2)) + ...
           Z2a*(exp(-((latitude(1)+Z2b)/Z2c).^2-((altitude(j)+Z2d)/Z2e).^2)) + ...
           Z3a*(exp(-((latitude(1)+Z3b)/Z3c).^2-((altitude(j)+Z3d)/Z3e).^2))) * (7.9734e-8);
           
endfor
            
% O2 quantity for altitude values
O2 = [1.6929e-2, 8.3383e-2, 1.5882e-1, 2.4263e-1, 3.3743e-1, 4.2905e-1, 5.1904e-1, ...
      6.0356e-1, 6.8987e-1, 7.7290e-1, 8.5445e-1, 9.3287e-1, 1.0015, 1.0687, 1.1226, ...
      1.1673, 1.2017, 1.2191];
      
%O3/O2
Ratio= Ozone./O2

% Display the results
disp('Longitude degrees:');
disp(longitude);
disp('Latitude degrees:');
disp(latitude);
disp('Altitude km:');
disp(altitude);
disp('Ozone Concentration');
disp(Ozone);
disp('Ratio O3/O2')
disp(Ratio)
