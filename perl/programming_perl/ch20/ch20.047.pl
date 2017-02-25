#!/usr/bin/perl -lTw
use strict;
use CGI::Carp "fatalsToBrowser";
use CGI qw/:standard escapeHTML/;
use Safe;
<?dbfo-need height='1in'?>
print header(-type => "text/html;charset=UTF-8"),
      start_html("Perl Expression Results");
my $expr = param("EXPR") =~ /^([^;]+)/
            ? $1 # return the now-taintless portion
            : croak("no valid EXPR field in form");
my $answer = Safe->new->reval($expr);
die if $@;

print p("Result of", tt(escapeHTML($expr)),
               "is", tt(escapeHTML($answer)));
