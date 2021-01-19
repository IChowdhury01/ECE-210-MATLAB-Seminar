%MATLAB Seminar
%Assignment 9
%Ivan Chowdhury

clear, clc
% Problem 2
syms t

f = sym ('t^5 * exp(-2 * t) * sin(5 * t) + t^3 * exp(-3 * t) * cos(4 * t) + t* + cos(10 * t)');
H = laplace (f)

%% 2b

[N, D] = numden (H);
Num_coeffs = double (coeffs (N))
Denom_coeffs = double (coeffs (D))
%% 
%%2c
G = tf (Num_coeffs, Denom_coeffs);
bode (G)
grid on
