clear all
clc
syms t
f=input('Enter the function of t: ');
L=laplace(f);
disp(['laplace of',char(f),'is',char(L)]);
ezplot(f);
figure;
ezplot(L);

// Output:
// L(3/t^(1/2)+2*t^(1/2)+1)=1/s+(3*pi^(1/2))/s^(1/2)+pi^(1/2)/s^(3/2)

syms t
f=input('Enter the function of t: ');
L=laplace(f);
F=simplify(L);
disp(['laplace of}=',char(L)]);
ezplot(f,[0,2*pi]);
figure;
ezplot(L);

// Output:
// Laplace of sin(t)*(heaviside(t)-heaviside(t-pi)) is
// (exp(pi*s) + 1)/(exp(pi*s) + s^2*exp(pi*s))


clear all
clc
syms t
f=input('Enter the function of t: ');
L=laplace(f);
F=simplify(L);
disp(['laplace of}=',char(L)]);
ezplot(f,[0,2]);
figure;
ezplot(L);

// Laplace of t*(heaviside(t)-heaviside(t-1))+(2-t)*(heaviside(t-
// 1)-heaviside(t-2)) is 1/s^2 - exp(-s)/s^2 - exp(-s)/s + (exp(-
// 2*s)*(s*exp(s) - exp(s) + 1))/s^2

clear all
clc
syms s
F=input('Enter the function of s: ');
L=ilaplace(F);
disp(['Inverse laplace of',char(F),'is',char(L)])
ezplot(F);
figure;
ezplot(L);

// Inverse laplace of(2*s + s^2 - 4)/((2*s + s^2 + 2)*(2*s + s^2 +
// 5))is(3*sin(2*t)*exp(-t))/2 - 2*exp(-t)*sin(t)

clc
syms s
F=input('Enter the function of s: ');
L=ilaplace(F);
disp(['Inverse laplace of',char(F),'is',char(L)])
ezplot(F);
figure;
ezplot(L);

// Output:
// Inverse laplace of(4*s + 5)/((s - 1)^2*(s + 2)) is exp(t)/3 - exp(-
// 2*t)/3 + 3*t*exp(t)