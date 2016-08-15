function [theta, theta_history, j_history] = gradient_descent(X,Y,theta, alpha, itr,m)
%GRADIENT_DESCENT computes parameters for local minimum
%   GRADIENT_DESCENT(X,Y,theta, alpha, itr,m)
%   X: input variable matrix
%   Y: output variable matrix
%   theta: parameter's matrix
%   alpha: learning rate
%   itr: number of iterations
%   m: length of matrix X
%   Outputs: 
%   theta : final computed parameters
%   theta_history : matrix of parameters computed during iterations
%   j_history : matrix of computed costs during iterations


theta_history = zeros(itr,2);
j_history = zeros(itr,1);

for i=1:itr
    j_history(i) = cost(X,Y,m, theta);
    
    tmp0 = theta(1) - alpha * (1/m)*sum(X*theta-Y);
    tmp1 = theta(2) - alpha * (1/m)*sum((X*theta-Y).*X(:,2));
    theta(1) = tmp0;
    theta(2) = tmp1;
    
    theta_history(i,1) = tmp0;
    theta_history(i,2) = tmp1;
    
    
    
end