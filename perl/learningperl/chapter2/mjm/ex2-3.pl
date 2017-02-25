#! perl

$PI = 3.141592654;

print "Enter a radius:\n";

$radius = <STDIN>;
chomp $radius;

if( $radius < 0 ) {
	$circumference = 0;
}
else {
	$circumference = 2 * $PI * $radius;
}

print "Circumference of a circle with radius $radius is $circumference\n";
