#!/usr/bin/env perl
# demo-podtags-core
use v5.14;
use strict;
use warnings;
use open qw(:std :utf8);       # an all-UTF-8 workflow
use warnings FATAL => "utf8";  # in case there are input encoding errors
use re "/x";                   # always want legible patterns
our %MATCH; *MATCH = \%+;      # alias %MATCH to %+ for legibility

my $RX = qr{
     (?(DEFINE)
         (?<podtag>         (?&capital) (?&either)          )
         (?<capital>        \p{upper}                       )
         (?<either>         (?&mirrored) | (?&balanced)     )
         (?<balanced>       < (?&contents) >                )
         (?<contents>       (?: (?&podtag) | (?&unangle) )* )
         (?<unangle>        [^<>]+                          )
         (?<mirrored>       (?<open> <{2,}+  ) 
                              \s+
                                (?: (?&podtag) | \p{Any} ) *?
                              \s+
                            (??{ ">" x length $MATCH{open} })
         )
     )
};

@ARGV = glob("*.pod")           if @ARGV == 0 && -t STDIN;
die "usage: $0 [pods]\n"        if @ARGV == 0 && -t STDIN;

$/ = "";  # paragraph mode, since tags can cross \n but not \n\n
$| = 1;   # faster output for the impatient

while (<>) {
    while (/ (?<TAG> (?&podtag) ) $RX /g) {
         say $MATCH{TAG};
    }
}
