$burglar = "Bilbo Baggins";
while ($burglar =~ /b/gi) {
    printf "Found a B at %d\n", pos($burglar)-1;
}
