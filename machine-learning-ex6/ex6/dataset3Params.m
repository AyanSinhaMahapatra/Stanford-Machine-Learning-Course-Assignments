function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;
error_mat = ones(8,8);
examples_set= [0.01; 0.03; 0.1; 0.3; 1; 3; 10; 30];

minerror = 1000;
for i = 1:8
  for j = 1:8
    C     = examples_set(i,:);
    sigma = examples_set(j,:);
    model= svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));
    predictions = svmPredict(model, Xval);
    error_sp=mean(double(predictions ~= yval));
    %fprintf('C is ...\n')
    %disp(C);
    %fprintf('sigma is ...\n')
    %disp(sigma);
    %fprintf('Corresponding Error is ...\n')
    %disp(error_sp);
    %error_mat(i,j)=error_sp;
    %disp(error_sp);
    if ( error_sp < minerror )
      minerror = error_sp;
      C_best = C;
      sigma_best = sigma;
      %fprintf('Changed Once\n');
    end
  end
end

C = C_best;
%fprintf('C minimum value is ...\n')
%disp(C);
sigma = sigma_best;
%fprintf('sigma minimum value is ...\n')
%disp(sigma);
%fprintf(' minimum Error is ...\n')
%disp(minerror);
%disp(error_mat);
% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%







% =========================================================================

end
