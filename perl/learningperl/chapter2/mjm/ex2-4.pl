#! perl

$NO_OF_INPUTS = 2;

$input = undef;
$total = undef;   
$input_no = 0;
while( $input_no < $NO_OF_INPUTS ) {
	print "Enter a number:\n";
	$input = <STDIN>;
	chomp $input;
	if(!defined($total)) {
		$total = $input;
	}
	else {
		$total *= $input;
	}
	$input_no ++;
}

print "Total: $total\n";


