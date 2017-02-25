#!/usr/bin/perl
use v5.14;
open SAVEOUT, ">&STDOUT";
open SAVEERR, ">&STDERR";

open(STDOUT, "> foo.out") || die "Can't redirect stdout";
open(STDERR, ">&STDOUT")  || die "Can't dup stdout";

select STDERR; $| = 1;         # enable autoflush
select STDOUT; $| = 1;         # enable autoflush

say STDOUT "stdout 1";     # these I/O streams propagate to
say STDERR "stderr 1";     # subprocesses too

system("some command");        # uses new stdout/stderr

close STDOUT;
close STDERR;

open STDOUT, ">&SAVEOUT";
open STDERR, ">&SAVEERR";

say STDOUT "stdout 2";
say STDERR "stderr 2";
