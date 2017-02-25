# make a bunch of attribute accessors
for my $methname (qw/name rank serno/) {
    no strict "refs";
    *$methname = sub { $_[0]->{ __PACKAGE__ . $methname } };
}
