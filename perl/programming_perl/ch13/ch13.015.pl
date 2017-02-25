package LuckyDraw;

use overload
    "<>" => sub {
        my $self = shift;
        return splice @$self, rand @$self, 1;
    };

sub new {
    my $class = shift;
    return bless [@_] => $class;
}

package main;

$lotto = new LuckyDraw 1 .. 51;

for (qw(1st 2nd 3rd 4th 5th 6th)) {
    $lucky_number = <$lotto>;
    print "The $_ lucky number is: $lucky_number.\n";
}

$lucky_number = <$lotto>;
print "\nAnd the bonus number is: $lucky_number.\n";
