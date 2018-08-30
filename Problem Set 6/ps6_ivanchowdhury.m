%MATLAB Seminar
%Assignment 6
%Ivan Chowdhury

clear, clc
%Problem 1 - Working with a transfer function
b = [0 3/7 2/3 1/2];  % Part a - find poles/zeros
a = [1/2 0 1/3 2];
[z, p, k] = tf2zp (b, a)

figure  % Part b - plot poles/zeros
zplane (z, p)
grid

n1 = 50;  % Part c - impulse response
[h, n] = impz (b, a, n1);

figure                              
stem (n, h)
title ('Impulse Response h[n]');
xlabel ('Discrete time (n)');
ylabel ('h[n]');

n2 = 0 : 49;  % Part d - Applying a digital filter
x2 = (-1/2) .^ (n2);

y2 = filter (b, a, x2);
figure
stem (n2, y2)
title ('x = (-1/2)^n [Filter]');
xlabel ('Discrete time [n]');
ylabel ('y');

y3 = conv (x2, h);  % Part e - Applying a digital filter, method 2
y3 (51 : end) = [];
figure
stem (n2, y3)
title ('x = (-1/2)^n [Conv]');
xlabel ('Discrete time [n]');
ylabel ('y');
%% Problem 2 - Experimentation with the Fibonacci sequence
% Part a - Generate first 100 values of impulse response
% Difference equation: y(n) = x(n) + y(n-1) + y(n-2)                                                            
f = [1 1];  
k = 100;
for(i = 3:k)
	f(i) = f(i - 1) + f(i - 2);
end

n = 1 : 100;
semilogy (n, f, '.')

% Part b - Use Z-transform to determine transfer function
% Transfer Function (determined by hand): z^2/(z^2-z-1)
% Poles (calculated by hand): z = -0.618, z = 1.618
% Zeroes (calculated by hand): z = 0(2)

b2 = [1 0 0];                
a2 = [1 -1 -1];
[z2, p2, k2] = tf2zp (b2, a2)

figure                              
zplane (z2, p2)
grid

% System is causal - only depends on past and present values in difference equation
% System is not stable - one pole is outside unit circle