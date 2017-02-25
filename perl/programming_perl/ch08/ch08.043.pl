sub make_saying  {
    my $salute = shift;
    my $newfunc = sub {
        my $target = shift;
        say "$salute, $target!";
    };
    return $newfunc;            # Return a closure
}

$f = make_saying("Howdy");      # Create a closure
$g = make_saying("Greetings");  # Create another closure

# Time passes...

$f->("world");
$g->("earthlings");
