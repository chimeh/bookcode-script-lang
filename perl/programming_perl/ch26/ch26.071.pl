use v5.14;
while (<>) {
    my($year, $title, $author) = unpack("A4 x A39 A*", $_);
    say "$author won ${year}'s Hugo for $title.";
}
