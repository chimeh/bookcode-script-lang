my $oldfh = select STDERR;
$| = 1;
select $oldfh;
