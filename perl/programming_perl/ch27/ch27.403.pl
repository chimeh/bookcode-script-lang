#!/usr/bin/perl
@cannot = grep {not unlink} @ARGV;
die "$0: could not unlink all of @cannot" if @cannot;
