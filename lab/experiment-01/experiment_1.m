% Solving the Non-linear ODE for Hooke's Law

clc;
clear;
close all;

% declaring the variable y(t)
syms x(t);

% Declaring the mass and spring constant 
m = 1 / 16;
k = 4;

% Declaring a second order non-linear ODE
Dy = diff(x);
ode = m * diff(x, t, 2) + k * x == 0;

% We provide the initial value conditions
condition1 = x(0) == 0;
condition2 = Dy(0) == 1;

% We solve equation and add the initial value condition
x(t) = dsolve(ode, [condition1 condition2]);

% We plot the obtained function
fplot(x);
title("Object attached at End Of Spring Obeying Hooke's Law");
xlabel('Time: t');
ylabel("Position of the object:  " + string(x));
legend;
