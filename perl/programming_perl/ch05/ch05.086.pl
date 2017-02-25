$burglar = "Bilbo Baggins";
while ($burglar =~ /b/gci) {        # ADD /c
    printf "Found a B at %d\n", pos($burglar)-1;
}
while ($burglar =~ /i/gi) {
    printf "Found an I at %d\n", pos($burglar)-1;
}
