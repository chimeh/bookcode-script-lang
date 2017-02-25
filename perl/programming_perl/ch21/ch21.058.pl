sub foo () { "FOO" }
sub bar () { "BAR" }
print foo => bar;   # prints fooBAR, not FOOBAR;
