$search = "while (<>) { study;";
for my $word (@words) {
    $search .= "++\$seen{\$ARGV} if /\\b$word\\b/i;\n";
}
$search .= "}";
@ARGV = @files;
undef $/;               # slurp each entire file
eval $search;           # this screams
die $@ if $@;           # in case eval failed
$/ = "\n";              # restore normal input terminator
for my $file (sort keys(%seen)) {
    say $file";
}
