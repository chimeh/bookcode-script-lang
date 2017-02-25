use 5.14.0;

say 'enter a number ';
chomp (my $num = <STDIN>);
given ($num){
	when (! ($num % 3) ) {
			say 'Fizz';
			continue;
	}
	when (! ($num % 5) ) {
			say 'Bin';
			continue;
	}
	when (! ($num % 7) ) {
			say 'Sausage';
	}
}

