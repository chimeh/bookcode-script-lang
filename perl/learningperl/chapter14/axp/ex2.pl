use 5.012;
use warnings;

my %last_name = (
    'fred' => 'flintstone',
    'Wilma' => 'Flintstone',
    'Barney' => 'Rubble',
    'betty' => 'rubble',
    'Bamm-Bamm' => 'Rubble',
    'PEBBLES' => 'FLINTSTONE'
);

say "$_ $last_name{$_}" foreach sort {
    lc $last_name{$a} cmp lc $last_name{$b} or
    lc $a cmp lc $b
} keys %last_name;
