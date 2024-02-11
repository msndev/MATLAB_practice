clear all
clc
syms x y
f= input('Enter the function f(x,y) :');
grad=gradient(f,[x,y])
f1=diff(f,x);
f2=diff(f,y);
P =inline(vectorize(f1), 'x', 'y');
Q =inline(vectorize(f2), 'x', 'y');
x =linspace(-2,2,10);
y =x;
[X,Y] = meshgrid(x,y);
U= P(X,Y);
V= Q(X,Y);
subplot(2,2,1);
ezcontour(f);
subplot(2,2,2);
quiver(X,Y,U,V,1,'g');
subplot(2,2,3);
quiver(X,Y,U,V,1,'r')
axis on
xlabel('x')
ylabel('y')
hold on
ezcontour(f,[-2,2])

// input:-
// Enter the function f(x,y) :2*exp(-(x-1)^2-(y-
// 1)^2)+1.8*exp(-5*(x+1)^2-3*y^2)-exp(-2*(x-1)^2-3*(y+.5)^2)
// grad =
// exp(- 2*(x - 1)^2 - 3*(y + 1/2)^2)*(4*x - 4) - 2*exp(- (x- 1)^2 - (y - 1)^2)*(2*x - 2) –
// (9*exp(- 5*(x + 1)^2 -3*y^2)*(10*x + 10))/5
// output:-
// exp(- 2*(x - 1)^2 - 3*(y + 1/2)^2)*(6*y + 3) - 2*exp(- (x - 1)^2 - (y - 1)^2)*(2*y - 2) -
// (54*y*exp(- 5*(x + 1)^2 - 3*y^2))/5