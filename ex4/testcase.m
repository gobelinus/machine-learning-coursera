il = 2;              % input layer
hl = 2;              % hidden layer
nl = 4;              % number of labels
nn = [ 1:18 ] / 10;  % nn_params
X = cos([1 2 ; 3 4 ; 5 6]);
y = [4; 2; 3];
lambda = 4;

th1 = reshape(nn(1:hl*(il+1)), hl, (il+1));
th2 = reshape(nn(1 + hl*(il+1):end), nl, (hl+1));

y_matrix = eye(nl)(y,:);
m = size(X, 1);

a1 = [ones(m, 1) X]
z2 = a1 * th1';
a2 = sigmoid(a1 * th1');

a2 = [ones(m, 1) a2];
a3 = sigmoid(a2 * th2');

d3 = a3 .- y_matrix

d2 = d3 * th2(:,2:end) .* sigmoidGradient(z2)

del1 = d2' * a1

del2 = d3' * a2

th1_grad = del1 / m

th2_grad = del2 / m

th1_grad(:, 2:end) = th1_grad(:, 2:end) + lambda * th1(:, 2:end)/m
th2_grad(:, 2:end) = th2_grad(:, 2:end) + lambda * th2(:, 2:end)/m
[J grad] = nnCostFunction(nn, il, hl, nl, X, y, lambda)
