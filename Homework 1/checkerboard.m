function A = checkerboard(varargin)
  n = cell2mat(varargin(1));
  m = n;
  if length(varargin)==2
    m = cell2mat(varargin(2));
  endif
  A = zeros(n,m);
  A(1:2:n,1:2:m) = 1;
  A(2:2:n,2:2:m) = 1;
  A = logical(A);
end
