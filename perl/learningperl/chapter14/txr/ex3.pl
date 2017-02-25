#!/usr/bin/perl
use 5.014;

my ($string,$sub_string) = read_input();

#first way
my $i = 0;
my @indexes = ();

while ($i <= (length($string) -1) ) {
				my $idx =  index($string,$sub_string,$i);
				if ($idx == -1) {
								last;
				}else {
					push @indexes, $idx;
					$i = $idx + length($sub_string);
				}
}
say "first way ", join(',',@indexes);

#second way: same as first but in recursive 
@indexes = ();
@indexes = recurse_string(\@indexes,0,$string,$sub_string);
say "second way ". join(',',@indexes);

# third way, regex
@indexes = ();
push @indexes, $-[0] while ($string =~ /$sub_string/g);
say "third way ". join(',',@indexes);


sub recurse_string {
	  my ($index_ref,$pos,$string,$sub_string) =@_;
		my @indexes = @$index_ref;
		my $i = index($string,$sub_string,$pos);
		if ($i == -1)	{
						return @indexes;
		} else {
				push @indexes, $i;
				return recurse_string(\@indexes,$i+length($sub_string),$string,$sub_string);
		}
}

sub read_input {
say ' enter string';
chomp(my $string = <STDIN>);
say ' enter sub string';
chomp(my $sub_string = <STDIN>);
return ($string, $sub_string);
}
