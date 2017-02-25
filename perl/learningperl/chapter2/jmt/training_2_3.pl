#!/usr/bin/perl -w

#Modify the program from the previous exercise so that, if the user enters a number
#less than zero, the reported circumference will be zero, rather than negative.

print "How big is your radius? ";
$radius = <STDIN>;

if ($radius >= 0){
	$circumference = 2 * 3.141592654 * $radius;
} else {
	$circumference = 0;
}
print "The circumference equals $circumference";