use Safe;
my $sandbox = Safe->new("Dungeon");
$Dungeon::foo = 1;  # Direct access is discouraged, though.
