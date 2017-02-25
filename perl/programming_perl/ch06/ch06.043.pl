sub pad {
    my($s, $width) = @_;
    my $gs = Unicode::GCString->new($s);
    return $gs . (" " x ($width - $gs->columns));
}

printf("%s £%.2f\n", pad($item, 25), $price);
