clc
clear all
syms x;
f=(((3^x)+(9^x))^(1/x));
L=limit(f,x,inf);

// L=9

clc
clear all
syms x;
f=((((x+2)^(x+2))*((x+3)^(x+3)))/((x+5)^((2*x)+5)));
L=limit(f,x,inf);

// L=exp(-5)