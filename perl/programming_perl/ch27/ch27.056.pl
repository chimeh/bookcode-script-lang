setpwent();
while (defined($name = getpwent())) {
    say "<<$name>>";
}
endpwent();
