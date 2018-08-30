% MATLAB Seminar
% Assignment 5
% Ivan Chowdhury

clear, clc
% Problem - Experimentation with Fisherisis dataset and classes (class properties, methods, and construction)
load fisheriris; %Part a - load fisherisis dataset

n = 150;  % Part d - Import entries as cell array
Flowers = cell (150, 1);

for (i = 1:n)  % storing data from the Flower object into a cell array
  Flowers{i} = Flower;
  Flowers{i}.petalWidth = meas(i, 1);
  Flowers{i}.petalLength = meas(i, 2);
  Flowers{i}.sepalWidth = meas(i, 3);
  Flowers{i}.sepalLength = meas(i, 4);
  Flowers{i}.species = species(i);
end

% Other parts may be found in the flower.m