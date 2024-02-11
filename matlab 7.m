clear all
clc
x=-4:4;
y=x;z=x;
[X,Y,Z]=meshgrid(x,y,z);
[Cx,Cy,Cz]=curl(X,Y,Z,cos(X+2*Y),sin(X-
2*Y),zeros(size(X)));
figure
subplot(2,2,1)
quiver3(X,Y,zeros(size(X)),Cx,Cy,Cz,0);
hold on
[X,Y]=meshgrid(x,y);
quiver(X,Y,cos(X+2*Y),sin(X-2*Y));
subplot(2,2,2) [X,Y]=meshgrid(x,y);
quiver(X,Y,cos(X+2*Y),sin(X-2*Y));
subplot(2,2,3)
surf(X,Y,cos(X+2*Y),sin(X-2*Y));
subplot(2,2,4)
[X Y]=meshgrid(-4:.3:4);
crl=curl(X,Y,cos(X+2*Y),sin(X-2*Y));
pcolor(X,Y,crl);
shading interp
hold on;
quiver(X,Y,cos(X+2*Y),sin(X-2*Y),'r');
hold off
colormap spring