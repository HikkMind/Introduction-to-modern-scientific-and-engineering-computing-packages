function x = bridgy(y1, y2)


  distance = @(x) sqrt((x(1)-x(2))^2 + (y1(x(1))-y2(x(2)))^2);
  start_value = [0,0];
  x = fminsearch(distance, start_value, optimset('TolX', 0.0001));


end

