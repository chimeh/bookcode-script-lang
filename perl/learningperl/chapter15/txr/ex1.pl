#!/usr/bin/perl -w
use 5.14.0;

my $secret_number = get_random();
my $exit;

say 'enter a integer between 1 to 100 (included) ';
say 'enter \'exit\' or \'quit\' or simply press enter to exit ';
until ($exit) {
  chomp ( my $answer = <STDIN>);
	given ($answer) {
					when ( is_exit_answer($answer) ) { last } 
					when ( !validate_number($answer) )  {redo }
					when ( number_found($answer,$secret_number) ) { last }
	}
}

sub is_exit_answer {
  my $answer = shift @_;
  if  ( !defined($answer) || $answer =~ /^quit$/i || $answer =~ /^exit$/i || $answer eq '') {
    say 'bye';
    return 1;
  } 
  return 0;
}

sub validate_number {
  my $num = shift @_;
	given ( $num) {
					when ( $_ =~ /\D+/ ) {
						say 'enter a integer between 1 to 100 (included) ';
						return 0;
					}
					when ( $_ < 1 || $_ > 100 ) {
						say 'enter a integer between 1 to 100 (included) ';
						return 0;
					}
	}
  return 1;
}

sub number_found{
  my ($num,$secret) = @_;
  if ($num != $secret) {
    my $verdict = ($num > $secret) ? 'try lower' : 'try higher';
    say $verdict;
    return 0;
  } else {
    say 'Found!';
    return 1;
  }
}

sub get_random {
  return int ( 1 + rand 100);
}
