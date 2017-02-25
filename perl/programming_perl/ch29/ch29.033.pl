use constant BUFFER_SIZE    => 4096;
use constant ONE_YEAR       => 365.2425 * 24 * 60 * 60;
use constant PI             => 4 * atan2 1, 1;
use constant DEBUGGING      => 0;
use constant ORACLE         => 'oracle@cs.indiana.edu';
use constant USERNAME       => scalar getpwuid($<);
use constant USERINFO       => getpwuid($<);

use constant {
    BUFFER_SIZE    => 4096,
    ONE_YEAR       => 365.2425 * 24 * 60 * 60,
    PI             => 4 * atan2( 1, 1 ),
    DEBUGGING      => 0,
    ORACLE         => 'oracle@cs.indiana.edu',
    USERNAME       => scalar getpwuid($<),
    USERINFO       => getpwuid($<),
};

sub deg2rad { PI * $_[0] / 180 }

print "This line does nothing"      unless DEBUGGING;

# references can be declared constant
use constant CHASH          => { foo => 42 };
use constant CARRAY         => [ 1,2,3,4 ];
use constant CCODE          => sub { "bite $_[0]\n" };

print CHASH->{foo};
print CARRAY->[$i];
print CCODE->("me");
print CHASH->[10];                          # compile-time error
