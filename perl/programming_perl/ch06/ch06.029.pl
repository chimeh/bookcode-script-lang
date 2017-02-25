$tc = ucfirst(substr($s, 0, 1)) .  lc(substr($s, 1));

s/(\w)(\w*)/\u$1\L$2/g;
