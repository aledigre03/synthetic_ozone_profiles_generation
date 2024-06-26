%O3 distribution integral

close all;
clear all;

nt = 101;
xmin = -90;
xmax = 90;
x = linspace(xmin, xmax, nt);

q = ones(size(x));
    for i = 1:length(x)
      Z1a=4.4;
      Z1b=0;
      Z1c=30;
      Z1d=-2600000;
      Z1e=500000;

      Z2a=6;
      Z2b=90;
      Z2c=60;
      Z2d=-2000000;
      Z2e=600000;

      Z3a=6;
      Z3b=-90;
      Z3c=60;
      Z3d=-2000000;
      Z3e=600000;
        f = @(y) ((Z1a*(exp(-((x(i)+Z1b)/Z1c).^2-((y+Z1d)./Z1e).^2)) + ...
                 Z2a*(exp(-((x(i)+Z2b)/Z2c).^2-((y+Z2d)./Z2e).^2)) + ...
                 Z3a*(exp(-((x(i)+Z3b)/Z3c).^2-((y+Z3d)./Z3e).^2))))*(0.37198*(10^-4));
        q(i) = integral(f, 0, 6000000);
    end
    

plot(x, q);
xlabel('x');
ylabel('Integral of Ztot');
title('Integral of Ztot over the range of y');


