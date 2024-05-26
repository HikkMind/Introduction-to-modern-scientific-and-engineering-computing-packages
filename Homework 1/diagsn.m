##function  res = diagsn(r,c)
##% заполняет прямоугольную матрицу натуральными числами в виде "змейки" по диагонали
##end
function res = diagsn(varargin)
  n = cell2mat(varargin(1));
  m = n;
  if (length(varargin)==2)
    m = cell2mat(varargin(2));
  endif
  res = uint32(zeros(n,m));
  if n == 1
    res = uint32(linspace(1,m,m));
    return;
  elseif m == 1
    res = uint32(linspace(1,n,n));
    res = res';
    return;
  endif
  res(1,1) = 1;
  k = 2;
  i = 2;
  j = 1;
  di = -1;
  dj = 1;

  while(k <= n*m)
    if i == 0 && j == m+1
      i = 2;
      j = m;
      res(i,j) = k;
      di *= -1;
      dj *= -1;
    elseif i == 0
      i = 1;
      res(i,j)=k;
      di *= -1;
      dj *= -1;
    elseif i == n+1
      i = n;
      j += 2;
      res(i,j)=k;
      di*=-1;
      dj*=-1;
    elseif j == 0
      j = 1;
      res(i,j)=k;
      di *= -1;
      dj *= -1;
    elseif j == m+1
      j = m;
      i += 2;
      res(i,j) = k;
      di *= -1;
      dj *= -1;
    else
      res(i,j) = k;
    endif
    k++;
    i += di;
    j += dj;
  endwhile
end

##function res = diagsn(varargin)
##  n = cell2mat(varargin(1));
##  m = n;
##  if (length(varargin)==2)
##    m = cell2mat(varargin(2));
##  endif
##  res = uint32(zeros(n,m));
##  if n == 1
##    res = linspace(1,m,m);
##    return;
##  elseif m == 1
##    res = linspace(1,n,n);
##    res = res';
##    return;
##  endif
##  res(1,1) = 1;
##  k = 2;
##  i = 2;
##  j = 1;
##  di = -1;
##  dj = 1;
##
##  while(k <= n*m)
##    if i == 0 && j == m+1
##      i = 2;
##      j = m;
##      res(i,j) = k;
##      di *= -1;
##      dj *= -1;
##    elseif i == 0
##      i = 1;
##      res(i,j)=k;
##      di *= -1;
##      dj *= -1;
##    elseif i == n+1
##      i = n;
##      j += 2;
##      res(i,j)=k;
##      di*=-1;
##      dj*=-1;
##    elseif j == 0
##      j = 1;
##      res(i,j)=k;
##      di *= -1;
##      dj *= -1;
##    elseif j == m+1
##      j = m;
##      i += 2;
##      res(i,j) = k;
##      di *= -1;
##      dj *= -1;
##    else
##      res(i,j) = k;
##    endif
##    k++;
##    i += di;
##    j += dj;
##  endwhile
##end
