function b = findSignChange (a)  % This function locates sign changes within an array
c = circshift (a, 1);
b = find(((a < 0) & (c > 0)) | ((a > 0) & (c < 0)));
end