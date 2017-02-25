@pats = ();
for my $word (@words) {
    push @pats, qr/\b${word}\b/i;
}
@ARGV = @files;
undef $/;               # slurp each entire file
while (<>) {
    for $pat (@pats) {
        $seen{$ARGV}++ if /$pat/;
    }
}
$/ = "\n";              # restore normal input terminator
for my $file (sort keys(%seen)) {
    say $file";
}
