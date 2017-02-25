sub new {
    my $invocant = shift;
    my $class   = ref($invocant) || $invocant;
    my $self = {
        color  => "bay",
        legs   => 4,
        owner  => undef,
        @_,                 # Override previous attributes
    };
    return bless $self, $class;
}

$ed       = Horse->new;                    # A 4-legged bay horse
$stallion = Horse->new(color => "black");  # A 4-legged black horse
