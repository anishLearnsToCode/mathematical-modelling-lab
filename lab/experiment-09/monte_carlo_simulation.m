% Monte Carlo Methods

clc;
clear;
close all;

n=50;
x=rand(n,1); gav=zeros(n,3); gavvar=NaN(n,3); gav(1,1)=x(1,1);
gav(1,2)=x(1,1)^2;
gav(1,3)=cos(pi*x(1,1)); 
for i=2:n
    gav(i,1)=sum(x(1:i))/i; gav(i,2)=sum(x(1:i).^2)/i; gav(i,3)=sum(cos(pi*x(1:i)))/i; gavvar(i,1)=var(x(1:i));
    gavvar(i,2)=var(x(1:i).^2);
    gavvar(i,3)=var(cos(pi*x(1:i)));
end

% Visualization figure(1);
subplot(3,1,1);
plot(gav(:,1)); line((1:n),ones(n,1)/2,'color','red');
legend('Empirical Average','Theoretical Mean','Location','NorthEastOutside');
title('f(x)=x');
subplot(3,1,2);
plot(gav(:,2)); line((1:n),ones(n,1)/3,'color','red');
legend('Empirical Average','Theoretical Mean','Location','NorthEastOutside'); title('f(x)=x^2');
subplot(3,1,3);
plot(gav(:,3)); line((1:n),ones(n,1)*0,'color','red');
legend('Empirical Average','Theoretical Mean','Location','NorthEastOutside'); title('f(x)=cos(\pi x)');