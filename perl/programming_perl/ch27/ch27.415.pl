#!/usr/bin/perl
# montouch - post-date files now + 1 month
$later = time() + 30 * 24 * 60 * 60;
@cannot = grep {not utime $later, $later, $_} @ARGV;
die "$0: Could not touch @cannot." if @cannot;
