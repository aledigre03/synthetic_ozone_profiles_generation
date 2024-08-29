close all;
clear all;

#january
nt = 101;
xmin = -90;
xmax = 90;
x = linspace(xmin, xmax, nt);

ymin = 0;
ymax = 80;
y = linspace(ymin, ymax, nt);

Z1a= 3.5;  
Z1b=-8;
Z1c=40;
Z1d=-24;
Z1e=5;

Z3a=6;  
Z3b=55;
Z3c=60;
Z3d=-22;
Z3e=9;

Z2a=7.5;   
Z2b=-90;
Z2c=60;
Z2d=-18;
Z2e=9;



[X, Y] = meshgrid(x, y);


Z1=Z1a*(e.^(-((X.+Z1b)/Z1c).^2-((Y+Z1d)./Z1e).^2));
Z2=Z2a*(e.^(-((X.+Z2b)/Z2c).^2-((Y+Z2d)./Z2e).^2));
Z3=Z3a*(e.^(-((X.+Z3b)/Z3c).^2-((Y+Z3d)./Z3e).^2));


Ztot= Z1+Z2+Z3;

figure 1;
contourf(X, Y, Ztot, 10, 'LineColor', 'r');



xlabel('X-axis');
ylabel('Y-axis');
title('Contour');
colorbar;


#february



nt = 101;
xmin = -90;
xmax = 90;
x = linspace(xmin, xmax, nt);

ymin = 0;
ymax = 80;
y = linspace(ymin, ymax, nt);

Z1a= 3;   %3
Z1b=-2;
Z1c=40;
Z1d=-25;
Z1e=5; %2

Z2a=8;    %9.5
Z2b=-90;
Z2c=60;
Z2d=-20;
Z2e=9; %6

Z3a=5.8;     %5.8
Z3b=60;
Z3c=60;
Z3d=-22;
Z3e=9; %6



[X, Y] = meshgrid(x, y);


Z1=Z1a*(e.^(-((X.+Z1b)/Z1c).^2-((Y+Z1d)./Z1e).^2));
Z2=Z2a*(e.^(-((X.+Z2b)/Z2c).^2-((Y+Z2d)./Z2e).^2));
Z3=Z3a*(e.^(-((X.+Z3b)/Z3c).^2-((Y+Z3d)./Z3e).^2));


Ztot= Z1+Z2+Z3;

figure 2;
contourf(X, Y, Ztot, 10, 'LineColor', 'r');



xlabel('X-axis');
ylabel('Y-axis');
title('Contour');
colorbar;


#march


nt = 101;
xmin = -90;
xmax = 90;
x = linspace(xmin, xmax, nt);

ymin = 0;
ymax = 80;
y = linspace(ymin, ymax, nt);

Z1a= 2.5;
Z1b=-2;
Z1c=40;
Z1d=-25;
Z1e=5;

Z2a=8;
Z2b=-90;
Z2c=60;
Z2d=-20;
Z2e=9;

Z3a=5;
Z3b=55;
Z3c=55;
Z3d=-20;
Z3e=9;



[X, Y] = meshgrid(x, y);


Z1=Z1a*(e.^(-((X.+Z1b)/Z1c).^2-((Y+Z1d)./Z1e).^2));
Z2=Z2a*(e.^(-((X.+Z2b)/Z2c).^2-((Y+Z2d)./Z2e).^2));
Z3=Z3a*(e.^(-((X.+Z3b)/Z3c).^2-((Y+Z3d)./Z3e).^2));


Ztot= Z1+Z2+Z3;

figure 3;
contourf(X, Y, Ztot, 10, 'LineColor', 'r');



xlabel('X-axis');
ylabel('Y-axis');
title('Contour');
colorbar;

#april


nt = 101;
xmin = -90;
xmax = 90;
x = linspace(xmin, xmax, nt);

ymin = 0;
ymax = 80;
y = linspace(ymin, ymax, nt);

Z1a= 3;
Z1b=40;
Z1c=60;
Z1d=-29;
Z1e=3;

Z2a=7.5;
Z2b=-90;
Z2c=60;
Z2d=-20;
Z2e=9;

Z3a=4.3;
Z3b=80;
Z3c=85;
Z3d=-22;
Z3e=9;



[X, Y] = meshgrid(x, y);


Z1=Z1a*(e.^(-((X.+Z1b)/Z1c).^2-((Y+Z1d)./Z1e).^2));
Z2=Z2a*(e.^(-((X.+Z2b)/Z2c).^2-((Y+Z2d)./Z2e).^2));
Z3=Z3a*(e.^(-((X.+Z3b)/Z3c).^2-((Y+Z3d)./Z3e).^2));


Ztot= Z1+Z2+Z3;

figure 4;
contourf(X, Y, Ztot, 10, 'LineColor', 'r');



xlabel('X-axis');
ylabel('Y-axis');
title('Contour');
colorbar;

#may


nt = 101;
xmin = -90;
xmax = 90;
x = linspace(xmin, xmax, nt);

ymin = 0;
ymax = 80;
y = linspace(ymin, ymax, nt);

Z1a= 3;  
Z1b=0;
Z1c=40;
Z1d=-30;
Z1e=5;

Z2a=7;
Z2b=-80;
Z2c=75;
Z2d=-22;
Z2e=9;

Z3a=7.1;
Z3b=95;
Z3c=75;
Z3d=-22;
Z3e=9;



[X, Y] = meshgrid(x, y);


Z1=Z1a*(e.^(-((X.+Z1b)/Z1c).^2-((Y+Z1d)./Z1e).^2));
Z2=Z2a*(e.^(-((X.+Z2b)/Z2c).^2-((Y+Z2d)./Z2e).^2));
Z3=Z3a*(e.^(-((X.+Z3b)/Z3c).^2-((Y+Z3d)./Z3e).^2));


Ztot= Z1+Z2+Z3;

figure 5;
contourf(X, Y, Ztot, 10, 'LineColor', 'r');



xlabel('X-axis');
ylabel('Y-axis');
title('Contour');
colorbar;


#june



nt = 101;
xmin = -90;
xmax = 90;
x = linspace(xmin, xmax, nt);

ymin = 0;
ymax = 80;
y = linspace(ymin, ymax, nt);

Z1a= 3.5;
Z1b=-11;
Z1c=40;
Z1d=-30;
Z1e=5;

Z2a=7;
Z2b=-70;
Z2c=60;
Z2d=-22;
Z2e=9;

Z3a=7.6;
Z3b=90;
Z3c=85;
Z3d=-21;
Z3e=9;



[X, Y] = meshgrid(x, y);


Z1=Z1a*(e.^(-((X.+Z1b)/Z1c).^2-((Y+Z1d)./Z1e).^2));
Z2=Z2a*(e.^(-((X.+Z2b)/Z2c).^2-((Y+Z2d)./Z2e).^2));
Z3=Z3a*(e.^(-((X.+Z3b)/Z3c).^2-((Y+Z3d)./Z3e).^2));


Ztot= Z1+Z2+Z3;

figure 6;
contourf(X, Y, Ztot, 10, 'LineColor', 'r');



xlabel('X-axis');
ylabel('Y-axis');
title('Contour');
colorbar;

#july


nt = 101;
xmin = -90;
xmax = 90;
x = linspace(xmin, xmax, nt);

ymin = 0;
ymax = 80;
y = linspace(ymin, ymax, nt);

Z1a= 2.5;
Z1b=10;
Z1c=40;
Z1d=-30;
Z1e=5;

Z2a=5.2;
Z2b=-50;
Z2c=60;
Z2d=-22;
Z2e=9;

Z3a=7.3;
Z3b=90;
Z3c=85;
Z3d=-21;
Z3e=9;



[X, Y] = meshgrid(x, y);


Z1=Z1a*(e.^(-((X.+Z1b)/Z1c).^2-((Y+Z1d)./Z1e).^2));
Z2=Z2a*(e.^(-((X.+Z2b)/Z2c).^2-((Y+Z2d)./Z2e).^2));
Z3=Z3a*(e.^(-((X.+Z3b)/Z3c).^2-((Y+Z3d)./Z3e).^2));


Ztot= Z1+Z2+Z3;

figure 7;
contourf(X, Y, Ztot, 10, 'LineColor', 'r');



xlabel('X-axis');
ylabel('Y-axis');
title('Contour');
colorbar;

#august


nt = 101;
xmin = -90;
xmax = 90;
x = linspace(xmin, xmax, nt);

ymin = 0;
ymax = 80;
y = linspace(ymin, ymax, nt);

Z1a= 3.5;
Z1b=8;
Z1c=80;
Z1d=-30;
Z1e=5;

Z2a=5.1;
Z2b=-50;
Z2c=60;
Z2d=-20;
Z2e=9;

Z3a=7.5;
Z3b=100;
Z3c=85;
Z3d=-20;
Z3e=9;


[X, Y] = meshgrid(x, y);


Z1=Z1a*(e.^(-((X.+Z1b)/Z1c).^2-((Y+Z1d)./Z1e).^2));
Z2=Z2a*(e.^(-((X.+Z2b)/Z2c).^2-((Y+Z2d)./Z2e).^2));
Z3=Z3a*(e.^(-((X.+Z3b)/Z3c).^2-((Y+Z3d)./Z3e).^2));


Ztot= Z1+Z2+Z3;

figure 8;
contourf(X, Y, Ztot, 10, 'LineColor', 'r');



xlabel('X-axis');
ylabel('Y-axis');
title('Contour');
colorbar;

#september


nt = 101;
xmin = -90;
xmax = 90;
x = linspace(xmin, xmax, nt);

ymin = 0;
ymax = 80;
y = linspace(ymin, ymax, nt);

Z1a= 3.5;
Z1b=0;
Z1c=80;
Z1d=-30;
Z1e=5;

Z2a=5.1;
Z2b=-55;
Z2c=60;
Z2d=-20;
Z2e=9;

Z3a=9;
Z3b=100;
Z3c=85;
Z3d=-20;
Z3e=9;



[X, Y] = meshgrid(x, y);


Z1=Z1a*(e.^(-((X.+Z1b)/Z1c).^2-((Y+Z1d)./Z1e).^2));
Z2=Z2a*(e.^(-((X.+Z2b)/Z2c).^2-((Y+Z2d)./Z2e).^2));
Z3=Z3a*(e.^(-((X.+Z3b)/Z3c).^2-((Y+Z3d)./Z3e).^2));


Ztot= Z1+Z2+Z3;

figure 9;
contourf(X, Y, Ztot, 10, 'LineColor', 'r');



xlabel('X-axis');
ylabel('Y-axis');
title('Contour');
colorbar;

#october


nt = 101;
xmin = -90;
xmax = 90;
x = linspace(xmin, xmax, nt);

ymin = 0;
ymax = 80;
y = linspace(ymin, ymax, nt);

Z1a= 3;
Z1b=3.5;
Z1c=80;
Z1d=-30;
Z1e=5;

Z2a=5.5;
Z2b=-90;
Z2c=90;
Z2d=-23;
Z2e=9;

Z3a=9;
Z3b=110;
Z3c=85;
Z3d=-23;
Z3e=9;


[X, Y] = meshgrid(x, y);


Z1=Z1a*(e.^(-((X.+Z1b)/Z1c).^2-((Y+Z1d)./Z1e).^2));
Z2=Z2a*(e.^(-((X.+Z2b)/Z2c).^2-((Y+Z2d)./Z2e).^2));
Z3=Z3a*(e.^(-((X.+Z3b)/Z3c).^2-((Y+Z3d)./Z3e).^2));


Ztot= Z1+Z2+Z3;

figure 10;
contourf(X, Y, Ztot, 10, 'LineColor', 'r');



xlabel('X-axis');
ylabel('Y-axis');
title('Contour');
colorbar;

#november


nt = 101;
xmin = -90;
xmax = 90;
x = linspace(xmin, xmax, nt);

ymin = 0;
ymax = 80;
y = linspace(ymin, ymax, nt);

Z1a= 2.5;
Z1b=5;
Z1c=80;
Z1d=-28;
Z1e=5;

Z2a=5.5;
Z2b=-90;
Z2c=90;
Z2d=-21;
Z2e=9;

Z3a=7.2;
Z3b=110;
Z3c=85;
Z3d=-21;
Z3e=9;



[X, Y] = meshgrid(x, y);


Z1=Z1a*(e.^(-((X.+Z1b)/Z1c).^2-((Y+Z1d)./Z1e).^2));
Z2=Z2a*(e.^(-((X.+Z2b)/Z2c).^2-((Y+Z2d)./Z2e).^2));
Z3=Z3a*(e.^(-((X.+Z3b)/Z3c).^2-((Y+Z3d)./Z3e).^2));


Ztot= Z1+Z2+Z3;

figure 11;
contourf(X, Y, Ztot, 10, 'LineColor', 'r');



xlabel('X-axis');
ylabel('Y-axis');
title('Contour');
colorbar;

#december


nt = 101;
xmin = -90;
xmax = 90;
x = linspace(xmin, xmax, nt);

ymin = 0;
ymax = 80;
y = linspace(ymin, ymax, nt);

Z1a= 2;
Z1b=-3;
Z1c=40;
Z1d=-29;
Z1e=5;

Z2a=7.5;
Z2b=-90;
Z2c=60;
Z2d=-20;
Z2e=9;

Z3a=4.5;
Z3b=70;
Z3c=85;
Z3d=-22;
Z3e=9;



[X, Y] = meshgrid(x, y);


Z1=Z1a*(e.^(-((X.+Z1b)/Z1c).^2-((Y+Z1d)./Z1e).^2));
Z2=Z2a*(e.^(-((X.+Z2b)/Z2c).^2-((Y+Z2d)./Z2e).^2));
Z3=Z3a*(e.^(-((X.+Z3b)/Z3c).^2-((Y+Z3d)./Z3e).^2));


Ztot= Z1+Z2+Z3;

figure 12;
contourf(X, Y, Ztot, 10, 'LineColor', 'r');



xlabel('X-axis');
ylabel('Y-axis');
title('Contour');
colorbar;

