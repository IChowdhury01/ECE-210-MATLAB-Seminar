% MATLAB Seminar
% Assignment 3
% Ivan Chowdhury

clear, clc
% Problem 1 - Basic Image Processing techniques. Using image processing to plot and display relational and logical indexing of arrays.
A = ones (100);
B = zeros (100);

[a_i ,a_j] = meshgrid (1:100 , 1:100);
A (:) = sqrt ((a_i - 50) .^ 2 + (a_j - 50) .^ 2);
A (A < 20) = 0;
A (A == 20) = 1;
A (A > 20) = 1;

B (:) = sqrt ((a_i - 40) .^2 + (a_j - 40) .^ 2);
B (B < 20) = 1;
B (B == 20) = 0;
B (B > 20) = 0;

f1 = figure ('Name', 'A', 'numbertitle', 'off');
imshow (A);  % Zero values in matrix form a circle
f2 = figure ('Name', 'B', 'numbertitle', 'off');
imshow (B);  % No zero values
f3 = figure ('Name', 'A&B', 'numbertitle', 'off');
imshow (A & B);  % Same as A
f4 = figure ('Name', 'A|B', 'numbertitle', 'off');
imshow (A | B);  % Same as B
f5 = figure ('Name', '~(A&B)', 'numbertitle', 'off');
imshow (~(A & B));  % Nonzero values in matrix form a circle
f6 = figure ('Name', '~(A|B)', 'numbertitle', 'off');
imshow (~(A | B));  % No nonzero values
%% Problem 2 - findClosest function
X = sin (linspace (0, 5, 100)) + 1;
[val, ind] = findClosest (X, 3/2)

%% Problem 3 - Experimentation with the cardinal sine (sinc) function.
%Plotting sign changes

X1 = linspace (-2 * pi, 2 * pi, 10001);
Y1 = sinc (X1);

f7 = figure ('Name', 'Sinc Function', 'numbertitle', 'off');
hold on
plot (X1, Y1)
grid on
axis ([-2 * pi, 2*pi - .25, 1])

xRoots = X1 (findSignChange (Y1))  % findSignChange function
yRoots = sinc (xRoots);
plot (xRoots, yRoots, 'ko')

dydx = diff (Y1) ./ diff (X1);
xMinMax = X1 (findSignChange (dydx))
yMinMax = sinc (xMinMax);
plot (xMinMax, yMinMax, 'r*')
hold off