#! perl

$PI = 3.141592654;

print "Enter a radius:\n";

$radius = <STDIN>;
chomp $radius;

$circumference = 2 * $PI * $radius;

print "Circumference of a circle with radius $radius is $circumference\n";
