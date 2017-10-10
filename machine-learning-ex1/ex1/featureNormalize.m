function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
features_no = size(X, 2);
entry_no = size(X, 1);
X_norm=zeros(entry_no,features_no);
mu = zeros(1, features_no);
sigma = zeros(1, features_no);
for i=1:features_no,
  mu(1, i) = mean(X(:,i));
  sigma(1, i) = std(X(:,i));
  for j=1:entry_no,
    X_norm(j,i) =  ( X(j,i)-mu(1,i)  ) / sigma(1,i) ;
    end
end

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       









% ============================================================

end
