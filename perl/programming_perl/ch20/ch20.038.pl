use v5.14;
use warnings;

say "Here I am";

opendir my $rootdh, '/';

chroot( '/Users/Amelia' );
opendir my $dh, '/';  # /Users/Amelia
say for readdir($dh);

chdir( $rootdh );     # oops, back to the real '/'
opendir my $dh, '.';
say for readdir($dh);
