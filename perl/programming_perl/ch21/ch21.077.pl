sub bark {
    my DOG $spot = shift;
    my %parm = @_;
    my $quality  = $parm{QUALITY}  || "yapping";
    my $quantity = $parm{QUANTITY} || "nonstop";
    ...
}

$fido->bark( QUANTITY => "once",
              QUALITY => "woof" );
