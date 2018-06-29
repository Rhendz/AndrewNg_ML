function [theta] = normalEqn(X, y)
%NORMALEQN Computes the closed-form solution to linear regression 
%   NORMALEQN(X,y) computes the closed-form solution to linear 
%   regression using the normal equations.

theta = zeros(size(X, 2), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the code to compute the closed form solution
%               to linear regression and put the result in theta.
%

% pinv() is used in case X' * X is non-invertible
% - this could be due to redundant features (linearly dependent)
% - or too many features
theta = pinv(X' * X) * X' * y;

% ============================================================

end
