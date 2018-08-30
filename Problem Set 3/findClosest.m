function [val, ind] = findClosest (x, desiredValue)  % This function finds the closest value in a matrix to the specified desired value
  y = x(:);
  A = abs (desiredValue - y);
  B = min (A);

  ind = find (A == B);
  val = x (ind);
end