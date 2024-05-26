function res = ishyper(A)

    if A != A'
        error('Матрица должна быть симметрической');
    end

    eig_num = eig(A);

    if any(eig_num > 0) && any(eig_num < 0) && sum(eig_num == 0) == 2
##    if eig_num(1)*eig_num(2) < 0 && eig_num(3) == 0 && eig_num(4) == 0
        res = true;
    elseif eig_num(1)*eig_num(2) > 0 && eig_num(3)*eig_num(4) > 0 && eig_num(1)*eig_num(3) < 0
        res = true;
    else
        res = false;
    end










##function res = ishyper(A)

##  res = false;
##  if size(A) != [4 4]
##    return;
##  endif
##
##  [P,l] = eig(A)
##  if l(1) <= 0 || l(2) <= 0 || l(3) >= 0
##    return;
##  endif
##  res = true;
##  return;











##  res = diag([1 1 1 1]) - (A!=0);
##  res = res.^2;
##  if sum(sum(res)) != 0
##    res = false;
##    return;
##  endif
##  if (sign(A(1,1)) == sign(A(2,2))) & (sign(A(2,2)) != sign(A(3,3)))
##    res = true;
##    return;
##  endif
##  res = false;
end
