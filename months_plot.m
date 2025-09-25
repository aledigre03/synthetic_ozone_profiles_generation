close all;
clear all;

nt = 101;
xmin = -90; xmax = 90;
ymin = 0; ymax = 80;

x = linspace(xmin, xmax, nt);
y = linspace(ymin, ymax, nt);
[X, Y] = meshgrid(x, y);

% Store parameters for each month in a cell array
params = {
  % Z1a Z1b Z1c Z1d Z1e   Z2a Z2b Z2c Z2d Z2e   Z3a Z3b Z3c Z3d Z3e
  [3.5 -8 40 -24 5   7.5 -90 60 -18 9   6 55 60 -22 9];   % Jan
  [3   -2 40 -25 5   8   -90 60 -20 9   5.8 60 60 -22 9]; % Feb
  [2.5 -2 40 -25 5   8   -90 60 -20 9   5   55 55 -20 9]; % Mar
  [3   40 60 -29 3   7.5 -90 60 -20 9   4.3 80 85 -22 9]; % Apr
  [3    0 40 -30 5   7   -80 75 -22 9   7.1 95 75 -22 9]; % May
  [3.5 -11 40 -30 5  7   -70 60 -22 9   7.6 90 85 -21 9]; % Jun
  [2.5  10 40 -30 5  5.2 -50 60 -22 9   7.3 90 85 -21 9]; % Jul
  [3.5   8 80 -30 5  5.1 -50 60 -20 9   7.5 100 85 -20 9];% Aug
  [3.5   0 80 -30 5  5.1 -55 60 -20 9   9   100 85 -20 9];% Sep
  [3    3.5 80 -30 5 5.5 -90 90 -23 9   9   110 85 -23 9];% Oct
  [2.5   5 80 -28 5  5.5 -90 90 -21 9   7.2 110 85 -21 9];% Nov
  [2   -3 40 -29 5   7.5 -90 60 -20 9   4.5 70 85 -22 9]; % Dec
};

nmonths = length(params);
Zall = zeros(nt, nt, nmonths);

for m = 1:nmonths
    p = params{m};

    Z1a = p(1);  Z1b = p(2);  Z1c = p(3);  Z1d = p(4);  Z1e = p(5);
    Z2a = p(6);  Z2b = p(7);  Z2c = p(8);  Z2d = p(9);  Z2e = p(10);
    Z3a = p(11); Z3b = p(12); Z3c = p(13); Z3d = p(14); Z3e = p(15);


    Z1 = Z1a*exp(-((X+Z1b)/Z1c).^2 - ((Y+Z1d)./Z1e).^2);
    Z2 = Z2a*exp(-((X+Z2b)/Z2c).^2 - ((Y+Z2d)./Z2e).^2);
    Z3 = Z3a*exp(-((X+Z3b)/Z3c).^2 - ((Y+Z3d)./Z3e).^2);

    Zall(:,:,m) = Z1 + Z2 + Z3;
end


% ---- Plot all months in subplots ----
figure('Position', [100, 100, 1200, 800]);  % wider and taller


nrows = 3;    % 3 rows
ncols = 4;    % 4 columns (3*4 = 12 subplots)
for m = 1:nmonths
    subplot(nrows, ncols, m);
    contourf(X, Y, Zall(:,:,m), 10, 'LineStyle', 'none');
    xlabel('Latitude [°]');
    ylabel('Longitude [°]');
    title(datestr(datenum(0,m,1),'mmm'));
    colorbar;
end

sgtitle('Monthly Ozone Profiles');


