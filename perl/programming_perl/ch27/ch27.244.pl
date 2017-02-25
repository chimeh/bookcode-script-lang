($x, $y) = ("one", "two");
say "before block, x is $x, y is $y";
{
    our $x = 10;
    local our $y = 20;
    say "in block, x is $x, y is $y";
}
say "past block, x is $x, y is $y";
