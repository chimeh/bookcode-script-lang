#!/usr/bin/perl
use v5.14;
use feature "say";
use warnings;

my $vowels = "aeiouy";
my $cons   = "cbdfghjklmnpqrstvwxzy";
my %map = (C => $cons, V => $vowels);  # init map for C and V

for my $class ($vowels, $cons) {    # now for each type
    for (split //, $class) {        # get each letter of that type
        $map{$_} .= $class;         # and map the letter back to the type
    }
}

my $pat = "";
for my $char (split //, shift) {    # for each letter in template word
    $pat .= "[$map{$char}]";        # add appropriate character class
}

my $re = qr/^${pat}$/i;             # compile the pattern
say "REGEX is $re";                 # debugging output
@ARGV = ("/usr/share/dict/words")   # pick a default dictionary
    if -t && !@ARGV;

while (<>) {                        # and now blaze through the input
    print if /$re/;                 # printing any line that matches
}
