eval {
    use autodie;
    open my $fh, "<:encoding(UTF-8)", $filename;
    my @lines = <$fh>;
    close $fh;
}

for ($@) {
    when (undef)   { }
    when ("open")  { say "Open failed";             }
    when (":io")   { say "Some other IO error";     }
    when (":all")  { say "Some other autodie error" }
    default        { say "Non-autodie error"        }
  }
