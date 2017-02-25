my $field = radio_group(
    NAME      => "animals",
    VALUES    => ["camel", "llama", "ram", "wolf"],
    DEFAULT   => "camel",
    LINEBREAK => "true",
    LABELS    => \%animal_names,
);
