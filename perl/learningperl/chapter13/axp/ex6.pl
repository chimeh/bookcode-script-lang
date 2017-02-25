use 5.012;
use warnings;
use File::Spec::Functions qw( catfile );

# Additionally, my solution allows you to make links to as many files as you want in a directory

die "Usage: '$0 file1 file2' OR '$0 file1 .. fileN dir'\n" if @ARGV < 2;

my $dest = pop @ARGV;

if ( -d $dest ) {
    link( $_ => catfile( $dest, $_ ) ) || warn "Couldn't link $_ to $dest: $!\n" foreach @ARGV;
}
else {
    die "'$dest' does not exist or is not a directory\n" if @ARGV > 1;
    link $ARGV[0] => $dest or warn "Couldn't link $ARGV[0] to $dest: $!\n";
}
