use v5.14;
use utf8;
my $cb = "crème brûlée";
my $bc = join("" => reverse($cb =~ /\X/g));
say $bc;    # "eélûrb emèrc"
