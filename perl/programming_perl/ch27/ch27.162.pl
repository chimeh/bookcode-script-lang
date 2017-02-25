use v5.14;
use List::Util qw(first);
sub getage(_) {
    my $one_char = shift;
    die unless length($one_char) == 1;
    state $ages = [reverse qw(1.1 2.0 2.1 3.0 3.1 3.2
                              4.0 4.1 5.0 5.1 5.2 6.0
                             )];
    return first { $one_char =~ /\p{Age=$_}/ } @$ages;
}
