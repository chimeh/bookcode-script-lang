package main;

tie *SCATTER,   "Tie::Tee", qw(tmp1 - tmp2 >tmp3 tmp4);
tie *RANDOM,    "Tie::DevRandom";
tie *NULL,      "Tie::DevNull";
tie my $randy,  "Tie::DevRandom";

for my $i (1..10) {
    my $line = <RANDOM>;
    chomp $line;
    for my $fh (*NULL, *SCATTER) {
        print $fh "$i: $line $randy\n";
    }
}
