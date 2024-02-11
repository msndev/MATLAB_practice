clc
clearvars
close all
syms x y
f = sqrt(1+x^2+y^2); t=taylor(f,[x,y],[1,0],'order',3);
disp('Taylor expansion is')
disp(char(t))
ezsurf(f);
colormap winter
shading interp
title('Function with colormap and shading interp') figure;
subplot(2,2,1);
ezsurf(f)
title('Function')
subplot(2,2,2);
ezsurf(t)
title('Taylor Expansion')
subplot(2,2,[3,4]);
ezsurf(f)
hold on;
ezsurf(t)
title('Combined Graph')

// Output:
//  Taylor expansion is
// 2^(1/2) + (2^(1/2)*(x - 1))/2 + (2^(1/2)*y^2)/4 + (2^(1/2)*(x - 1)^2)/8

clc
clearvars
close all
syms x y
f = sqrt(1+x^2+y^2); t=taylor(f,[x,y],[1,0],'order',4);
disp('Taylor expansion is')
disp(char(t))
ezsurf(f);
colormap winter
shading interp
title('Function with colormap and shading interp') figure;
subplot(2,2,1);
ezsurf(f)
title('Function')
subplot(2,2,2);
ezsurf(t)
title('Taylor Expansion')
subplot(2,2,[3,4]);
ezsurf(f)
hold on;
ezsurf(t)
title('Combined Graph')

// Output:
//  Taylor expansion is
// 2^(1/2) + (2^(1/2)*(x - 1))/2 + (2^(1/2)*y^2)/4 + (2^(1/2)*(x - 1)^2)/8 - (2^(1/2)*(x - 1)^3)/16 - (2^(1/2)*y^2*(x - 1))/8