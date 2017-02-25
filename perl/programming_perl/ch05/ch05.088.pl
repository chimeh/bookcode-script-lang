pos($recipe) = 0;                 # Just to be safe, reset \G to 0
while ( $recipe =~ /(\d+) /g ) {
    my $amount = $1;
    if ($recipe =~ / \G (\w{0,3}) \. \s+ (\w+) /x) {  # abbrev. + word
        say "$amount $1 of $2";
    } else {
        $recipe =~ / \G (\w+) /x;                     # just a word
        say "$amount $1";
    }
}
