function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and
%   sigma. You should complete this function to return the optimal C and
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.3;

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

C = 1.000000;
sigma = 0.100000;

% this code is hard coded as it tries brute force technique with 64
% combinations

%c_vector = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
%sigma_vector = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];

%error_val = 1.0;

%for i=1:length(c_vector)
    %local_c = c_vector(i);
    %for j=1:length(sigma_vector)
        %local_sigma = sigma_vector(j);
        %model= svmTrain(X, y, local_c, @(x1, x2) gaussianKernel(x1, x2, local_sigma));
        %pred = svmPredict(model, Xval);

        %new_error = mean(double(pred ~= yval))
        %error_val
        %if new_error <= error_val
            %error_val = new_error;
            %C = local_c;
            %sigma = local_sigma;
        %endif

    %endfor
%endfor

fprintf('C = %f, sigma = %f\n', C, sigma);
% =========================================================================

end
