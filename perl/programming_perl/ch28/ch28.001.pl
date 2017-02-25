use v5.10;

use File::Find;

my %names;
my $wanted = sub {
    return unless /\.pm\z/;
    open(my $fh, "<", $File::Find::name)
        || die "can't open $File::Find::name: $!";
    OUTER: while( <$fh> ) {
        next unless /\A =head1 \s+ NAME/x;
        while( <$fh> ) {
            next if /\A \s* \z/x;
            / (?<name>\S+) \s* -+ \s* (?<desc>.*) /x;
            $names{ $+{name} } = $+{desc};
            last OUTER;
        }
     }
  };

find($wanted, @INC);

for my $name (sort keys %names) {
    printf "%-25s - %s\n", $name, $names{$name};
}
