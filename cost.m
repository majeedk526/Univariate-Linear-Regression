function J = cost(X, Y, m, theta)
%COST :calculates squared error of the hypothesis function
%   COST(X,Y, m, theta)
%   X : Independent variable, must be mx2 matrix
%   Y : Dependent/Output variable, must be mx1 matrix
%   m : length of matrix X
%   theta : inital parameter values, must be 2x1 matrix

    J = (1/(2*m)) * sum((X*theta - Y).^2);

end