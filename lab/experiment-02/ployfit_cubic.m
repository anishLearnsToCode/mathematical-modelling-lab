% Fitting a Cubic Polynomial to a discrete data sample

clc;
clear;
close all;

% Creating data;
X = [-10: 20];
y = X .^ 4 + 3;

% Fitting a cubic curve to the data and obtaining parameters theta
[theta, ~] = polyfit(X, y, 3);

% Creating a cubic function using the obtained parameters theta
syms f(t);
f(t) = theta(1) * t ^ 3 + theta(2) * t ^ 2 + theta(3) * t + theta(4);

% plotting the quadratic function
p1 = fplot(f);
title("Cubic Curve Fitted to data");
xlabel('x');
ylabel("Fitted Curve:  y'(x)");

% Plotting the Original Discrete data
hold on;
p2 = plot(X, y, '-o');
legend([p1, p2], 'Fitted Curve', 'Original Data');
