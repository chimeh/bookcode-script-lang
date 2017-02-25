#! perl

# Chapter 12, Exercise 1

foreach ( @ARGV ) {
	print "$_:";
	if ( -e $_ ) {
		print " readable" if -r $_;
		print " writeable" if -w $_;
		print " executable" if -x $_;
		print "\n";
	}
	else {
		print " doesn't exist\n";
 	}
}