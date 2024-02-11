clc
clear
syms x y
f= x^3 - 2*y^2 - 2*y^4 + 3*x^2*y;
p= diff(f,x); q=diff(f,y);
[ax,ay]=solve(p,q);
ax=double(ax);ay=double(ay);
r= diff(p,x); s=diff(p,y); t =diff(q,y);D=r*t-s^2;
ezsurf(f);
colormap autumn
shading interp
title('Function with colormap and shading interp')
figure;
subplot(2,1,1);
r=linspace(-10,10,10);
s=linspace(-10,10,10);
[r,s]=meshgrid(r,s);
z=r.^3-2*s.^2-2*s.^4+3*r.^2.*s;
surf(r,s,z)
title('function with meshgrid')
subplot(2,1,2);
ezsurf(f);
title('Function with critical points.')
legstr={'Function Plot'};
for i=1:size(ax)
T1=subs(D,{x,y},{ax(i),ay(i)});
T2=subs(r,{x,y},{ax(i),ay(i)});
T3=subs(f,{x,y},{ax(i),ay(i)});
if (double(T1) == 0)
sprintf('At (%f,%f) further investigation is required',ax(i),ay(i)) legstr=[legstr,{'Case of Further investigation'}];
mkr='ko';
elseif (double(T1) < 0)
sprintf('The point (%f,%f) is a saddle point', ax(i),ay(i)) legstr=[legstr,{'Saddle Point'}];
mkr='bv';
else
if (double(T2) < 0)
sprintf('The point (%f,%f) is a maxima',ax(i),ay(i)) legstr=[legstr,{'Maximum value of the function'}];
mkr='g+';
else
sprintf('The point (%f,%f) is a minima',ax(i),ay(i)) legstr=[legstr,{'Minimum value of the function'}]; mkr='r*';
end
end
hold on plot3(ax(i),ay(i),T3,mkr,'Linewidth',4); end
legend(legstr,'Location','Best');

// Output:
// Name of Student: Sreenitya Mandava
// ans=
// At (0.000000,0.000000) further investigation is required.
// ans=
// The point (-2.000000,1.000000) is a minima.
// ans=
// The point (-2.000000,0.500000) is a saddle point.
// ans=
// The point (0.000000,0.000000) is a minima.
// Warning: Imaginary parts of complexes X,Y and/or Z arguments ingnored >In DA4 at 49
// ans=
// The point (0.000000,0.000000) is a minima.