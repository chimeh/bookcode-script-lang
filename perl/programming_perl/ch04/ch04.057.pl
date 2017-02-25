use v5.10.1;
my $count = 0;
for (@array) {
    when ("FNORD") { ++$count }
}
print "\@array contains $count copies of 'FNORD'\n";
