function [] = supervised_learning()
% supervised_learning : run linear regression with single variable

close all;

x = [5; 10; 15; 20; 25]; % weights
Y = [10; 25; 23; 28; 40]; %costs

m = length(x);
figure;
plot(x,Y,'ko', 'MarkerFaceColor', 'b'); % plot for visualisation


end

