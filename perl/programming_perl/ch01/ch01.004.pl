my $ary = \@myarray;              # reference to a named array
my $hsh = \%myhash;               # reference to a named hash
my $sub = \&mysub;                # reference to a named subroutine

my $ary = [1,2,3,4,5];            # reference to an unnamed array
my $hsh = {Na => 19, Cl => 35};   # reference to an unnamed hash
my $sub = sub { print $state };   # reference to an unnamed subroutine

my $fido = Camel->new("Amelia");  # reference to an object
