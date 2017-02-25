#!/usr/bin/perl

use strict;
use warnings;
use 5.014;

$^I = ".bak";

while (<>) {
    s/#!\/usr\/bin\/perl/#!\/usr\/bin\/perl\n## Copyright (C) 2015 by Yours Truly/;
    print; # as a bonus, it also adds some windows line endings
}
