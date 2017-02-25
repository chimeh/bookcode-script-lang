use version 0.77;

my $version = version->parse($version_string);
my $qversion = qv($other_version_string);

if ($version > $qversion) {
    say "Version is greater!";
}
