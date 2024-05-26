function A = chess(n)
A = zeros(n,n);
for i = 1:n
  for j = 1:n
    A(i,j) = mod(i+j,2);
  endfor
end
