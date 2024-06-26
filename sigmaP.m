%  0.983,0.924,0.823,0.699,0.567,0.437,0.317,0.211,0.119,0.038

close all;
clear all;


fid = fopen('SigmaP_values.txt', 'w');


nt = 101;
xmin = -90;
xmax = 90;
x = linspace(xmin, xmax, nt);

ymin = 0;
ymax = 80;
y = linspace(ymin, ymax, nt);

Z1a=5.2;
Z1b=0;
Z1c=30;
Z1d=-26;
Z1e=5;

Z2a=10;
Z2b=90;
Z2c=60;
Z2d=-18
Z2e=6;

Z3a=10;
Z3b=-90;
Z3c=60;
Z3d=-18;
Z3e=6;



[X, Y] = meshgrid(x, y);


Z1=Z1a*(e.^(-((X.+Z1b)/Z1c).^2-((Y+Z1d)./Z1e).^2));
Z2=Z2a*(e.^(-((X.+Z2b)/Z2c).^2-((Y+Z2d)./Z2e).^2));
Z3=Z3a*(e.^(-((X.+Z3b)/Z3c).^2-((Y+Z3d)./Z3e).^2));


Ztot= Z1+Z2+Z3;


columntot= zeros(size(x));

for i= 1:length(x)
   for j= 1:length(y)
     columntot(i) = columntot(i) + Ztot(j,i);
     SigmaP= exp(-(columntot(i)/8.5));
     fprintf(fid, '%f\n', SigmaP);
   endfor
endfor

fclose(fid);

