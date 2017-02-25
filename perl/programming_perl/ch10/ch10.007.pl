*units = populate() ;         # Assign \%newhash to the typeglob
print $units{kg};             # Prints 70; no dereferencing needed!

sub populate {
    my %newhash = (km => 10, kg => 70);
    return \%newhash;
}
