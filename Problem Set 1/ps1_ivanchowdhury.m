% MATLAB Seminar
% Assignment 1
% Ivan Chowdhury

clear, clc
%% Problem 1 - Scalar variables
a = 5.7 * pi / 6.9
b = 239 + exp (5) - 2.5e23
c = log (4.23) * asin (.7)
z = (3 + 2j) * (4 + 5j)

%% Problem 2 - Complex Operations 
real_part = real (z)
imaginary_part = imag (z)

magnitude = abs (z)
phase = angle (z)
complex_conjugate = conj (z)

%% Problem 3 - Vector and Matrix Variables 
aVec = [3.14 15 9 26+.1j]
A1 = repmat(aVec, 3,1)
A2 = [aVec ; aVec ; aVec]

bVec1 = [3.14 ; 15 ; 9 ; 26+.1j]
bVec2 = aVec.'

cVec = -5 : 1 : 5
dVec = linspace(-5, 5, 100)

B = [1+2j 10e-5; exp(j * 2 * pi) 3+4j]
speye(1e6);

%% Problem 4 - Vector and Matrix Operations
A = (magic(5)) /65
B = randn(5)
C = B * A
D = B .* A
F = (1/4)*A^3 + (1/4)*A^2 + (1/3)*A + (1/6)*eye(5)
G = inv(A)