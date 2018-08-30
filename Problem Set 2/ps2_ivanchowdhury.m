% MATLAB Seminar
% Assignment 2
% Ivan Chowdhury

clear, clc
% Problem 1 - Experimentation with built in vectorized functions
x = linspace (0, 1, 100);  % part a
y = exp (x)

trap_approx = trapz (y) .* x  % part b
rect_approx = sum (y) .* x

cum_int1 = cumtrapz (y)  % part c
cum_int2 = cumsum (y)

deriv_approx = diff (y) ./ diff (x);  % part d
length (deriv_approx)

xhat = linspace(0, 1, 99);
deriv2_approx = diff (deriv_approx) ./ diff (xhat);
length (deriv2_approx)

E = [0 1 2 3 4 5]  % part e
circshift (E, 3)
%% Problem 2 - Experimentation with matrix operations
a = [1 : 1 : 100]  % part a
A = reshape (a, 10, 10)     

B = magic (10)  % part b
C = diag (diag (B))

B (:, 2) = flipud (B (:, 2))  % part c

A_flip = fliplr (A)  % part d

cSum = sum (A * B, 1)  % part e

cMean = mean ((A .* B), 2)  % part f
    
A(:, end) = []  % part g
%% Problem 3 - Comparison of different array construction methods
m = 300;  % part a - for loops and no pre-allocation
n = 500;

tic
for i = 1:m
  for j = 1:n
    X(i,j) = (i^2 + j^2)/(i+j+3);
  end
end
toc

m = 300;  % part b - for loops and pre-allocation of memory with zeroes
n = 500;
Y = zeros(m,n);

tic
for i = 1:m
  for j = 1:n
    Y(i,j) = (i^2 + j^2)/(i+j+3);
  end
end
toc                            
tic  % part c - elementwise matrix operations
[A1,B1]=meshgrid(1:500,1:300);
Z = (A1.^2 + B1.^2)./(A1 + B1 + 3);
toc

% Elementwise matrix operations > Pre-allocated for loop > standard for loop in terms of execution speed.