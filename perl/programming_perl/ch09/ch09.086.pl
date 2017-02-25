@members = ();
while (<>) {
     %fields = split /[\s=]+/;
     push @members, { %fields };
}
$rec->{members} = [ @members ];
