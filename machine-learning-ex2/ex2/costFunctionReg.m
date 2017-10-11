function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples
n = size(X,2);

% You need to return the following variables correctly 
J_init = sigmoid( X * theta );
J =  ( - ( y' * log( J_init ) )  - ( ( 1 .- y )' * log( 1 .- J_init ) ) ) / m ; 


J = J + (lambda * ( sum(theta .^ 2) - ( theta(1,1)^2 )) ) / ( 2 * m ) ;


grad = (X' * (J_init - y)) ./ m ;
for i = 2:n
  grad(i,1) = grad(i,1) + ( lambda * theta(i,1) ) / m;
end

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta






% =============================================================

end
