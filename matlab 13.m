//1
clc
clear all
syms x y t
// % Code for 2D vector function
f=input('Enter the components of 2D vector function [u,v] ');
T=input('Enter x and y in parametric form ');
L=input('Enter the limits of integration for t in the form [a,b]');
a=L(1);b=L(2);
r=[x y]; % Position vector xi+yj
r1=subs(r,{x,y},{T(1),T(2)});
dr1=diff(r1,t);
f1=subs(f,{x,y},{T(1),T(2)});
fdr=sum(f1.*dr1);
I=int(fdr,t,a,b);
disp(I)
P = inline(vectorize(f(1)), 'x', 'y');
Q = inline(vectorize(f(2)), 'x', 'y');
x = linspace(-2*pi,2*pi, 10); y = x; %The values will be different
from one problem to another
[X,Y] = meshgrid(x,y);
U = P(X,Y);V = Q(X,Y);
quiver(X,Y,U,V,1.5)
hold on
t = linspace(0,2*pi);
x1=eval(vectorize(r1(1)));
y1=eval(vectorize(r1(2)));
plot(x1,y1,'r')
axis equal

//2
clc
clear all
syms x y z t
f =input('Enter the components of 3D vector function [u,v,w] ');
T =input('Enter x,y,z in parametric form');
r=[x y z];
L=input('Enter the limits of integration for t in the form [a,b]');
a=L(1);b=L(2);
r1=subs(r,{x,y,z},{T(1),T(2),T(3)});
dr1=diff(r1,t);
f1=subs(f,{x,y,z},{T(1),T(2),T(3)});
fdr=sum(f1.*dr1);
I=int(fdr,t,a,b);
disp(I)
P = inline(vectorize(f(1)), 'x', 'y','z');
Q = inline(vectorize(f(2)), 'x', 'y','z');
R = inline(vectorize(f(3)), 'x', 'y','z');
x=linspace(0,1,10); y=x; z=x; % The values will be different from one
problem to another
[X,Y,Z] = meshgrid(x,y,z);
U = P(X,Y,Z);V = Q(X,Y,Z);W = R(X,Y,Z);
quiver3(X,Y,Z,U,V,W,1.5)
hold on
t = linspace(0,1,10);
x1=eval(vectorize(r1(1)));
y1=eval(vectorize(r1(2)));
z1=eval(vectorize(r1(3)));
plot3(x1,y1,z1,'r')

//3
syms x y
F=input( 'enter the vector as i,j order in vector form:');
P = inline(vectorize(F(1)), 'x', 'y');
Q = inline(vectorize(F(2)), 'x', 'y');
x = linspace(0, 1, 10); y = x;
[X,Y] = meshgrid(x,y);
U = P(X,Y);
V = Q(X,Y);
quiver(X,Y,U,V)
axis on
xlabel('x'); ylabel('y');

//4
syms x y z
F=input( 'Enter the vector as i,j and k order in vector form:')
P = inline(vectorize(F(1)), 'x', 'y','z');
Q = inline(vectorize(F(2)), 'x', 'y','z');
R = inline(vectorize(F(3)), 'x', 'y','z');
x = linspace(-1, 1, 5); y = x;
z=x;
[X,Y,Z] = meshgrid(x,y,z);
U = P(X,Y,Z);
V = Q(X,Y,Z);
W = R(X,Y,Z);
quiver3(X,Y,Z,U,V,W)
axis on
xlabel('x');
ylabel('y');
zlabel('z');

//5
syms x y
f=input( 'Enter the function f(x,y):');
grad=gradient(f,[x,y])
f1=diff(f,x);
f2=diff(f,y);
P = inline(vectorize(f1), 'x', 'y');
Q = inline(vectorize(f2), 'x','y');
x = linspace(-2, 2, 10);
y = x;
[X,Y] = meshgrid(x,y);
U = P(X,Y);
V = Q(X,Y);
quiver(X,Y,U,V,1)
axis on
xlabel('x')
ylabel('y')
hold on
ezcontour(f,[-2 2])

//6
x=-4:0.5:4;
y=x;
[X Y]=meshgrid (x,y);
Div=divergence(X,Y,X.*Y.^2, X.^2);
figure
pcolor(X,Y,Div);
shading interp
hold on;
quiver(X,Y, X.*Y.^2, X.^2,'Y');
hold off;
colormap copper
title('Vector field of F(x,y)=[xy^2,x^2]');

//7
x=-4:4;
y=x;z=x;
[X, Y, Z]=meshgrid (x,y,z);
[Cx, Cy, Cz]=curl(X,Y,Z,-Y.*X.^2,X+Y.^3,zeros(size(X)));
% Note that as there are no z–values in our field, we supplied
zeros for z
figure
quiver3(X,Y,zeros(size(X)),Cx,Cy,Cz,0);
hold on;
[X Y]=meshgrid (x,y);
quiver(X,Y, -Y.*X.^2,X+Y.^3);
figure
[X Y]=meshgrid (-4:.3:4);
crl=curl(X,Y,-Y.*X.^2,X+Y.^3);
pcolor(X,Y,crl);
shading interp
hold on;
quiver(X,Y, -Y.*X.^2,X+Y.^3,'y');
hold off;
colormap copper

//8
clear all
close all
clc
X=-4:4; Y=X;Z=X;
[x,y,z]=meshgrid(X,Y,Z);
[cx,cy,cz]=curl(x,y,z,-y,x,zeros(size(x)));
figure;
subplot(1,2,1);
quiver3(x,y,zeros(size(x)),cx,cy,cz,0);
title('3-d view of curl');
subplot(1,2,2);
quiver(x,y,-y,x);
title('2-d view of curl');

//9
clear all
clc
syms x y z real
xa=0;
xb=1;
ya=0+0*x;
yb=1-x;
za=0*x+0*y;
zb=cos(pi*x/2)+0*y;
I=int(int(int(1+0*z,z,za,zb),y,ya,yb),x,xa,xb)
viewSolid(z,za,zb,y,ya,yb,x,xa,xb)

//10
clc
clearvars
close all
syms x y
f = input('Enter the function f(x,y): ');
I = input('Enter the point [a,b] around which Taylor series is sought:
');
a = I(1);b=I(2);
n=input('enter the order of series:');
tayser=taylor(f,[x,y],[a,b],'order',n)

//11
clear all
clc
syms x
f=input('Enter the upper curve f(x): ');
g=input('Enter the lower curve g(x): ');
L=input('Enter the limits of integration for x [a,b]:');
a=L(1); b=L(2);
Area=int(f-g,x,a,b);
disp(['Area bounded by the curves f(x) and g(x) is: ',char(Area)]);
x1=linspace(a,b,20);y1=subs(f,x,x1);
x2=x1;y2=subs(g,x,x1);
plot(x1,y1);hold on; plot(x2,y2);hold off;
xlabel('x-axis');ylabel('y-axis');
legend('f(x)','g(x)');grid on;

//12
clear all
clc
syms y
f=input('Enter the right curve f(y): ');
g=input('Enter the left curve g(y): ');
L=input('Enter the limits of integration for y [c,d]:');
c=L(1); d=L(2);
Area=int(f-g,y,c,d);
disp(['Area bounded by the curves f(y) and g(y) is: ',char(Area)]);
y1=linspace(c,d,20);x1=subs(f,y,y1);
y2=y1;x2=subs(g,y,y1);
plot(x1,y1);hold on;
plot(x2,y2);hold off;
xlabel('x-axis');ylabel('y-axis');
legend('f(y)','g(y)');grid on;

//13
clc
syms x
f=input('Enter the function f(x)');
c=input('Enter the axis of rotation y = c (enter only c value): ');
iL=input('Enter the integration limits: ');
a=iL(1);b=iL(2);
vol=pi*int((f-c)^2,a,b);
disp(['Volume of solid of revolution is: ',char(vol)]);
x1=linspace(a,b,20); y1=subs(f,x,x1);
x2=x1; y2=c*ones(length(x1));
plot(x1,y1);hold on;
plot(x2,y2);hold off;
xlabel('x-axis');ylabel('y-axis')
legend('The curve y=f(x)','The axis of revolution y=c');
grid on;