($recipe = <<'DISH') =~ s/^\s+//gm;
    Preheat oven to 451 deg. Fahrenheit.
    Mix 1 ml. dilithium with 3 oz. NaCl and
    stir in 4 anchovies.  Glaze with 1 g.
    mercury.  Heat for 4 hours and let cool
    for 3 seconds.  Serves 10 aliens.
DISH

$recipe =~ /\d+ /g;
$recipe =~ /\G(\w+)/;           # $1 is now "deg"
$recipe =~ /\d+ /g;
$recipe =~ /\G(\w+)/;           # $1 is now "ml"
$recipe =~ /\d+ /g;
$recipe =~ /\G(\w+)/;           # $1 is now "oz"
