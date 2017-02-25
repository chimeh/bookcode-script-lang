#! perl

print "Enter a string:\n";
$string = <STDIN>;

print "Enter number of times to print:\n";
$no_of_times = <STDIN>;

print "Output:\n" . ( $string x $no_of_times );