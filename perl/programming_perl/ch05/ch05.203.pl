$funpat = qr/\w+$np/;
"myfunfun(1,(2*(3+4)),5)" =~ /^$funpat$/;   # Matches!
