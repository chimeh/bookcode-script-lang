use 5.012;
use warnings;

say "Give me some data!";
chomp( my @data = <STDIN> ); # chomp is important to measure strings correctly ¬_¬

say "1234567890" x 4; # ruler
printf "%20s\n" x @data, @data;

