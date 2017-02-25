#!/usr/bin/perl
use 5.12.0;

my %flintstones = ( fred => 'flintstone', barney => 'rubble' , wilma => 'flintstone' );

my $name = read_name();
if ( exists($flintstones{$name})) {
  say("last name for $name is $flintstones{$name}");
} else {
  say("last name not found for $name");
}
sub read_name {
	say 'enter the first name';
	chomp (my $name = <STDIN>);
	return $name;
}
