$path =~ s#/tmp#/var/tmp/scratch#;

if ($dir =~ m[/bin]) {
    say "No binary directories please.";
}
