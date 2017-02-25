package Person;

use overload q("") => \&as_string;

sub new {
    my $class = shift;
    return bless { @_ } => $class;
}

sub as_string {
    my $self = shift;
    my ($key, $value, $result);
    while (($key, $value) = each %$self) {
        $result .= "$key => $value\n";
    }
    return $result;
}

$obj = Person->new(height => 72, weight => 165, eyes => "brown");

print $obj;
