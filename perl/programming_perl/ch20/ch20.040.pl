 use Safe;
 $Dungeon::master = 'Gary Gygax';  # Still direct access, still discouraged.
 my $sandbox = Safe->new("Dungeon");
