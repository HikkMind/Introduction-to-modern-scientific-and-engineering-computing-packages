function res = fence(varargin)
  n = cell2mat(varargin(1));
  m = n;
  if (length(varargin) == 2)
    m = cell2mat(varargin(2));
  endif
  res = zeros(n,m);
  res(1:n,1:2:m)=1;
  res = logical(res);
end

