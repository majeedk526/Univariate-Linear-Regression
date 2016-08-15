function [] = supervised_learning()
% supervised_learning : run linear regression with single variable

close all;

x = [5; 10; 15; 20; 25]; % weights
Y = [10; 25; 23; 28; 40]; %costs

m = length(x);
figure;
plot(x,Y,'ko', 'MarkerFaceColor', 'b'); % plot for visualisation

X = [ones(m,1), x]; % add 1s in the first column
theta = zeros(2,1); % 2x1 matrix with inital elements zero

fprintf(strcat('Initial cost : ', num2str(cost(X,Y,m, theta)))); %prints inital cost

alpha = 0.001; % learning rate
itr = 15; % number of iterations

[theta, theta_history, j_history] = gradient_descent(X, Y, theta, alpha, itr,m);

end

