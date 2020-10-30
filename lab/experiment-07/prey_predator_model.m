% Prey Predator Model

clc;
clear;
close all;

% Loading in the Lotka Voltera Prey-Predator Model
type lotka;

% Using the ode23 function to solve the differential equation defined in 
% lotka over the interval 0<t<15. Use an initial condition of x(0)=y(0)=20 
% so that the populations of predators and prey are equal.
t0 = 0;
tfinal = 15;
y0 = [20; 20];   
[t,y] = ode23(@lotka, [t0 tfinal], y0);

% Plotting the results
plot(t, y);
title('Predator/Prey Populations Over Time');
xlabel('t');
ylabel('Population');
legend('Prey', 'Predators', 'Location', 'North');

% Plotting the populations against each other. The resulting phase plane 
% plot makes the cyclic relationship between the populations very clear.
figure;
plot(y(:, 1), y(:, 2));
title('Phase Plane Plot');
xlabel('Prey Population');
ylabel('Predator Population');

% Comparing the results of different solvers
% Solve the system a second time using ode45, instead of ode23. The ode45 
% solver takes longer for each step, but it also takes larger steps. 
% Nevertheless, the output of ode45 is smooth because by default the solver 
% uses a continuous extension formula to produce output at four equally spaced 
% time points in the span of each step taken. (You can adjust the number of 
% points with the 'Refine' option.) Plot both solutions for comparison.
figure;
[T, Y] = ode45(@lotka, [t0 tfinal], y0);
plot(y(:,1),y(:,2),'-',Y(:,1),Y(:,2),'-');
title('Phase Plane Plot');
legend('ode23','ode45');

% The results show that solving differential equations using different 
% numerical methods can produce slightly different answers.

% Calculating Trajectories fod Different Initial Conditions
% Specifying the region of the plot for vector plot
[x1, x2] = meshgrid(-1:0.2:3, -1:.2:3);
x1dot = x1 - x2 .*x1; 
x2dot = x1 .* x2 - x2;

% Plotting the vector plot with quiver
figure;
quiver(x1,x2,x1dot, x2dot);
f = @(t,y) [y(1) - y(1)*y(2); y(1)*y(2) - y(2)];
hold on;

% Calculating the phase trajectories for different initial conditions
for y0=0:.7:2.8
    [ts, ys] = ode45(f,[0, 8], [y0/2, y0]);
    plot(ys(:, 1), ys(:, 2));
end
hold off
xlabel('x');
ylabel('y');
