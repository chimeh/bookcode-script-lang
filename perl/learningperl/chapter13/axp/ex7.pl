use 5.012;
use warnings;
use File::Spec::Functions qw( catfile );
use Getopt::Std qw( getopts );

# Awww, wish this worked. It doesn't though.

our $opt_s;
getopts( 's' );

die "Usage: '$0 file1 file2' OR '$0 file1 .. fileN dir'\n" if @ARGV < 2;

*ln = $opt_s ? \&CORE::symlink : \&CORE::link;

my $dest = pop @ARGV;

if ( -d $dest ) {
    ln( $_ => catfile( $dest, $_ ) ) || warn "Couldn't link $_ to $dest: $!\n" foreach @ARGV;
}
else {
    die "'$dest' does not exist or is not a directory\n" if @ARGV > 1;
    ln( $ARGV[0] => $dest ) or warn "Couldn't link $ARGV[0] to $dest: $!\n";
}
