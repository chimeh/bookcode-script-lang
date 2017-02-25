#!/usr/bin/perl -w

#Modify the program from the previous exercise to prompt for and accept a radius
#from the person running the program. So, if the user enters 12.5 for the radius,
#she should get the same number as in the previous exercise.

print "How big is your radius? ";
$radius = <STDIN>;
$circumference = 2 * 3.141592654 * $radius;
print "The circumference equals $circumference";