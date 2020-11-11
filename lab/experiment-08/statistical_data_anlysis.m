% Statistical Data Analysis

clc;
clear;
close all;

load count.dat
[n,p] = size(count);

t = 1: n;
plot(t,count);

xlabel('Time');
ylabel('Vehicle Count');

% Graph description been done by descriptive statistics from graph tools
mx = max(count);
mu = mean(count);
sigma = std(count);
x_mean = mean(t);
xline(x_mean);

legend('Station 1', 'Station 2', 'Station 3', 'Location', 'northwest');