BEGIN {
    require Mother;
    require Father;
    push @ISA, qw(Mother Father);
}
