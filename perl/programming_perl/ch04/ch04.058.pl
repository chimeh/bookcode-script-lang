use v5.14;
my $count = 0;
for (@array) {
    ++$count when "FNORD";
}
print "\@array contains $count copies of 'FNORD'\n";
