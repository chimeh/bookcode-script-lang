#! /usr/bin/perl
use 5.014;

say 'enter directory ';
chomp (my $dir = <STDIN>);

if ( !defined($dir) || $dir eq '' || $dir =~ /^\s+$/ ) {
				chdir or die "unable to change to home directory \n $!";
} else {
chdir $dir or die " unable to change to directory $dir \n $!";
}

list_files();

sub list_files {
	my @files = <* .*>;
	foreach my $file (sort @files) {
					say "$file";
	}
}

