my $dh;  # make sure it’s new
opendir($dh, $somedir) || die "can't opendir $somedir: $!";
while (readdir($dh)) {
    print "$somedir/$_\n";
}
closedir $dh;
