# set up array of array of hash
$dungeon[$x][$y] = \%properties;

# delete one property from hash
delete $dungeon[$x][$y]{"OCCUPIED"};

# delete three properties all at once from hash
delete @{ $dungeon[$x][$y] }{ "OCCUPIED", "DAMP", "LIGHTED" };

# delete reference to %properties from array
delete $dungeon[$x][$y];
