%AIM: To find area between two curves using MATLAB.
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

// Output:
// Enter the upper curve f(x): 7-x^2
// Enter the lower curve g(x): 0
// Enter the limits of integration for x [a,b]:[-1,2]
// Area bounded by the curves f(x) and g(x) is: 18

clear all
clc
syms x
f=input('Enter the function f(x): ');
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
legend('The curve y=f(x)','The axis of revolution y=c');grid on;


// Output:
// Enter the upper curve f(x): 4/(x^2+4)
// Enter the axis of rotation y = c (enter only c value): 0
// Enter the integration limits: [0,2]
// Volume of solid of revolution is: pi*(pi/4+1/2)