% Using polyfit to fit a quadratic (degree 2) curve to data

clc;
clear;
close all;

% Creating data;
X = [-10: 20];
y = X .^ 3 + 3;

% Fitting a curve to the data and obtaining parameters theta
[theta, ~] = polyfit(X, y, 2);

% Creating a quadratic function using the obtained parameters theta
syms f(t);
f(t) = theta(1) * t ^ 2 + theta(2) * t + theta(3);

% plotting the quadratic function
p1 = fplot(f);
title("Quadratic Curve Fitted to data");
xlabel('x');
ylabel("Fitted Curve:  y'(x)");

% Plotting the Original Discrete data
hold on;
p2 = plot(X, y, '-o');
legend([p1, p2], 'Fitted Curve', 'Original Data');
