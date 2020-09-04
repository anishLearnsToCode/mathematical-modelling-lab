% Lab 2
% Linear Regression

clc; 
clear; 
close all;


X = [1 1 ; 1 2 ; 1 3];
y = [1 ; 2 ; 3];
theta = [0 ; 0];
alpha = 0.03;
num_iters = 1000;
[theta, J_hist] = gradientDescent(X, y, theta, alpha, num_iters);

plot(J_hist);
disp(theta);

function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

  trainingExamles = size(X, 1);
  predictions = X * theta;
  squareErrors = (predictions - y) .^ 2;
  J = 0.5 / trainingExamles * sum(squareErrors);
end


function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
  %GRADIENTDESCENT Performs gradient descent to learn theta
  %   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
  %   taking num_iters gradient steps with learning rate alpha

  % Initialize some useful values
  trainingExamples = length(y); % number of training examples
  J_history = zeros(num_iters, 1);
  features = length(theta) - 1;

  for iter = 1:num_iters
     theta = theta - alpha * (1/trainingExamples) * (((X*theta) - y)' * X)'; % Vectorized  
     J_history(iter) = computeCost(X, y, theta);
  end
end
