% Fitting a linear curve using polyfit
clc;
clear;
close all;

% Creating the discrete data
X = [-10 : 20];
y = X .^ 2;

% Using the polyfit function to fit a linear curve to the data
[a, b] = polyfit(X, y, 1);

% Creating a linear function using the points obtained
syms f(t);
f(t) = a(1) * t + a(2);

% plotting the function
p1 = fplot(f);
title("Linear Curve Fitted to data");
xlabel('x');
ylabel("Fitted Curve:  y'(x)");

% Plotting the Original Discrete data
hold on;
p2 = plot(X, y, '-o');
legend([p1, p2], 'Fitted Curve', 'Original Data');
