#!/usr/bin/perl
use 5.12.0;

my $col_width = shift @ARGV;
chomp (my @strings = @ARGV);
print_ruler($col_width);
map { printf ("%${col_width}s\n",$_); } @strings;

sub print_ruler {
 my $width_ruler = shift; 
 $width_ruler = $width_ruler == 0 ? 10 :  $width_ruler * 2 ;
 print "123456789+" x ( $width_ruler / 10) ,"\n" ;
}
