use v5.14;
use utf8;
use Unicode::UCD qw(num);
my $num;
if ("४५६७" =~ /(\d+)/) {
    $num = num($1);
    printf "Your number is %d\n", $num;
    # Your number is 4567
}
