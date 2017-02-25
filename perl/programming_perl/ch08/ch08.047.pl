@colors = qw(red blue green yellow orange purple violet);
for my $name (@colors) {
    no strict "refs";       # Allow symbolic references
    *$name = *{uc $name} = sub { "<FONT COLOR='$name'>@_</FONT>" };
}
