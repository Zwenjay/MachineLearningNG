function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
n=size(X,2);
J_history = zeros(num_iters, 1);

for iter = 1:num_iters
   tempV=zeros(1,n);
   for k=1:n
        for i=1:m
            tempV(k)=tempV(k)+(theta'*X(i,:)'-y(i))*X(i,k);
        end
        tempV(k)=tempV(k)*alpha/m;
    end
    
    for k=1:n
        theta(k)=theta(k)-tempV(k);
    end 
    J_history(iter) = computeCostMulti(X, y, theta);
end
end
