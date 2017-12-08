function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

% ====================== YOUR CODE HERE ======================

mu = mean(X,1);  
sigma = std(X);  
i = 1;  
le = size(X, 2);  
while i <= le,  
    X_norm(:,i) = (X(:,i)-mu(1,i))./sigma(1,i);  
    i = i + 1;  
end;  




% ============================================================

end
