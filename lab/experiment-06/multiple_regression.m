clc;
clear;
close all;

% Load in The Data
load carsmall;
x1 = Weight;
x2 = Horsepower; 
y = MPG;

% Compute the regression coefficients for a linear model with an interaction term.
X = [ones(size(x1)) x1 x2 x1.*x2];
b = regress(y,X);  

% Plot the Data
scatter3(x1, x2, y, 'filled');
hold on;
x1fit = min(x1):100:max(x1);
x2fit = min(x2):10:max(x2);
[X1FIT, X2FIT] = meshgrid(x1fit, x2fit);
YFIT = b(1) + b(2) * X1FIT + b(3) * X2FIT + b(4) * X1FIT .* X2FIT;
mesh(X1FIT, X2FIT, YFIT);
xlabel('Weight');
ylabel('Horsepower');
zlabel('MPG');
view(50, 10);
hold off;
