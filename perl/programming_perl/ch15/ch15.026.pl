if (($ENV{input_fdno} // "") =~ /^\d$/) {
    open(INPUT, "<&=$ENV{input_fdno}")
        || die "can't fdopen $ENV{input_fdno} for input: $!";
}
