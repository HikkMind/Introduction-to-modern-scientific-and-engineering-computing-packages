function A = mirrorm(a,n)

  [h, w] = size(a);
  upp = flipud(a(1:n,:));
  dwn = flipud(a(h-n+1:h,:));
  left = fliplr(a(:, 1:n));
  right = fliplr(a(:, w-n+1:w));

  A = horzcat(left,a,right);
  upp = horzcat(flipud(fliplr(a(1:n, 1:n)')), upp, a(1:n, w-n+1:w)');
  dwn = horzcat(a(h-n+1:h, 1:n)', dwn, flipud(fliplr(a(h-n+1:h, w-n+1:w)')));
  A = vertcat(upp, A, dwn);
end

