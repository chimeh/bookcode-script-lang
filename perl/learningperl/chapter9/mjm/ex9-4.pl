#! perl
# Ex 4

$^I = ".bak";

while (<>) {
	print;
	print "Copyright blah blah\n" if /(^#!)/;
}
