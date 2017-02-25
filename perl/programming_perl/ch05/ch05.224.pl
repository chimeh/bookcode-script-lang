#!/usr/bin/env perl
# demo-podtags-grammar
use v5.14;
use strict;
use warnings;
use open qw(:std :utf8);         # an all-UTF-8 workflow
use warnings FATAL => "utf8";    # in case there are input encoding errors
use re "/x";                     # always want legible patterns

my $podtag = do { use Regexp::Grammars; qr{
    <podtag>

    <token: podtag>         <capital> <either>
    <token: capital>        \p{upper}
    <token: either>         <mirrored> | <balanced>
    <token: balanced>       \< <contents> \>
    <token: contents>       (?: <[podtag]> | <[unangle]> ) *
    <token: unangle>        [^<>]+
    <token: mirrored>       <open=( \< {2,} )>
                                \s+
                                    (?: <podtag> | \p{Any} ) *?
                                \s+
                            </open>
    }xms;
};

@ARGV = glob("*.pod")           if @ARGV == 0 && -t STDIN;
die "usage: $0 [pods]\n"        if @ARGV == 0 && -t STDIN;

$/ = "";  # paragraph mode, since tags can cross \n but not \n\n
$| = 1;   # faster output for the impatient

while (<>) {
    while (/$podtag/g) {
      say $/{podtag}{capital},
          $/{podtag}{either}{""};
    }
}
