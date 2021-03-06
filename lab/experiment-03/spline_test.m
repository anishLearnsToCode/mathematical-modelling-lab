% Spline Curve Fitting on Damped Oscillator

% Clearing all variables and Plots
clc;
clear;
close all;

% Creating Control Points
x = 0:30;
a = .1;
y = exp(-a * x) .* sin(x);

% Generating Data points to map spline function
xx = 0:.25:30;
yy = spline(x, y, xx);

% Plotting Spline Function
p1 = plot(x, y, 'o');
hold on;
p2 = plot(xx, yy);
legend([p1, p2], 'Control Points', 'Spline Curve');
title("Spline Curve Fitted to Damped Oscillator Data");
xlabel('x');
ylabel("Fitted Curve");
