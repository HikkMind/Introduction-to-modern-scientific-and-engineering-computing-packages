function res = diffi(varargin)
  f = varargin(1);
  ts = varargin(2);
  h = 10^(-8);
  if (length(varargin)==3)
    h = varargin(3);
  endif
  res;
  for p = 1:length(ts)
    res = horzcat(res,(f(ts(p)+h) - f(ts(p)))./h);
  endfor
end

