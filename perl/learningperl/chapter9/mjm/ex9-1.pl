#! perl
# Ex 1

my $what = 'fred|barney';

while (<>) {
	print if /($what){3}/;
}
