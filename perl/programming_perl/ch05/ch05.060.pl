tr/aeiou/!/;                 # change any vowel into !
tr{/\\\r\n\b\f. }{_};        # change strange chars into an underscore

$count = ($para =~ tr/\n//); # count the newlines in $para
$count = tr/0-9//;           # count the digits in $_

tr/@$%*//d;                  # delete any of those

# change en passant
($HOST = $host) =~ tr/a-z/A-Z/;

# same end result, but as an rvalue
$HOST = ($host =~ tr/a-z/A-Z/r);

$pathname =~ tr/a-zA-Z/_/cs; # change all but ASCII alphas 
                             # to single underbar
