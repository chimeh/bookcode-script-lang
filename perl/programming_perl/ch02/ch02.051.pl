# Stat returns list value.
$modification_time = (stat($file))[9];

# SYNTAX ERROR HERE.
$modification_time = stat($file)[9];  # OOPS, FORGOT PARENS

# Find a hex digit.
$hexdigit = ("a","b","c","d","e","f")[$digit-10];

# A "reverse comma operator".
return (pop(@foo),pop(@foo))[0];

# Get multiple values as a slice.
($day, $month, $year) = (localtime)[3,4,5];
