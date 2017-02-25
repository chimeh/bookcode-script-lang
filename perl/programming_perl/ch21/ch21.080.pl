1 while s/(\t+)/" " x (length($1) * 4 - length($`) % 4)/e;
