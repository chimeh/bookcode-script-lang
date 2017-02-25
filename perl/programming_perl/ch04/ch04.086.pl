{
    my $state = 0;

    sub on     { $state = 1 }
    sub off    { $state = 0 }
    sub toggle { $state = !$state }
}
