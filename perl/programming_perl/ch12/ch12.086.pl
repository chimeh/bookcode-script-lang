package Critter;

sub new {
    my $class = shift;
    my $self = { pups => 0, @_ };    # Override default.
    bless $self, $class;
}

sub pups : lvalue {                  # We'll assign to pups() later.
    my $self = shift;
    $self->{pups};
}

package main;
$varmint = Critter->new(pups => 4);
$varmint->pups *= 2;                 # Assign to $varmint->pups!
$varmint->pups =~ s/(.)/$1$1/;       # Modify $varmint->pups in place!
print $varmint->pups;                # Now we have 88 pups.
