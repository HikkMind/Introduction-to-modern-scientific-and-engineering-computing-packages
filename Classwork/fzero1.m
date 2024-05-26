##x = -1:0.05:1;
##F = @(x)x^2-1;
##fzero(F,-2)

p = [1 0 0 1 0 -3];
##z = -2:0.1:2;
F = @(z) z.^5+z.^2-3;
dF = @(z) 5*z.^4 + 2*z;
r = roots(p);
##x = -2:0.1:2;
x = linspace(-2,2,1000);
##y = -2:0.1:2;
y = linspace(-2,2,1000);
[X,Y] = meshgrid(x,y);
Z = X+i*Y;
e = 0.00001;
for p = 1:41
  Z = Z - F(Z)./dF(Z);
endfor
col = ['r', 'g', 'b', 'm'];
hold on;
##plot(X,Y,'m.', 'markersize', 8);
##C = [20 87 150 56; 190 18 56 135; 80 15 80 20; 3 200 190 89];
C = [20 56 150 250 1 200];
B = zeros(size(Z));
for k = 1:length(r)
  I = abs(Z-r(k)) < e;
  B += I*C(k);
##  plot(X(I), Y(I), '.', 'Color', col(k));
endfor;
hold off;
##figure

image(B);
##hold off;


##hold on;
####plot(10,10,'o');
##for k1 = 1:1:41
##  for k2 = 1:1:41
##    pp = 0;
##    t = Z(k1,k2) - F(Z(k1,k2))/dF(Z(k1,k2));
##    while pp < 100
##      if F(t)/dF(t) < e
##        t = t - F(t)/dF(t);
##        break;
##      endif
##      t = t - F(t)/dF(t);
##      ++pp;
##    endwhile
##
##
##    if abs(real(t) - real(r(1))) < e & abs(imag(t) - imag(r(1))) < e
##      plot(real(Z(k1,k2)), imag(Z(k1,k2)), 'r.', 'markersize', 8);
##    elseif abs(real(t) - real(r(2))) < e & abs(imag(t) - imag(r(2))) < e
##      plot(real(Z(k1,k2)), imag(Z(k1,k2)), 'g.', 'markersize', 8);
##    elseif abs(real(t) - real(r(3))) < e & abs(imag(t) - imag(r(3))) < e
##      plot(real(Z(k1,k2)), imag(Z(k1,k2)), 'b.', 'markersize', 8);
##    else
##      plot(real(Z(k1,k2)), imag(Z(k1,k2)), 'm.', 'markersize', 8);
##    endif
##  endfor
##endfor
##hold off;
