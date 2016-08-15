function [] = supervised_learning()
% supervised_learning : run linear regression with single variable

close all;

x = [5; 10; 15; 20; 25]; % weights
Y = [10; 25; 23; 28; 40]; %costs

m = length(x);
figure;
plot(x,Y,'ko', 'MarkerFaceColor', 'b'); % plot for visualisation
title('Linear regression');
xlabel('Weights (g)');
ylabel('Cost (INR)');
hndl = gca; % get current axes handle

X = [ones(m,1), x]; % add 1s in the first column
theta = zeros(2,1); % 2x1 matrix with inital elements zero

disp(strcat('Initial cost : ', num2str(cost(X,Y,m, theta)))); %prints inital cost
pause;

alpha = 0.001; % learning rate
itr = 10; % number of iterations

[theta, theta_history, j_history] = gradient_descent(X, Y, theta, alpha, itr,m);

fprintf(strcat('Final cost : ', num2str(cost(X,Y,m, theta)), ' ')); %prints final cost

figure;
plot(1:itr, j_history); % plot costs during iterations
title('error iterations');
xlabel('Iterations');
ylabel('error');

hold(hndl);
for i=1:itr
    % plots hypothesis function for each iteration
   plot(hndl, X(:,2), X*(theta_history(i,:))','r--', 'LineWidth', 2); 
end
hold off

figure;
hold on;
% plots  dataset on a new figure window
plot(x,Y,'ko', 'MarkerFaceColor', 'b');
title('Linear regression');
xlabel('Weights (g)');
ylabel('Cost (INR)');

% plots final hypothesis function (best fit line)
plot(X(:,2), X*(theta),'r--', 'LineWidth', 2); 
hold off;

end

