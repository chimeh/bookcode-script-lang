#!/usr/bin/perl
# montouch - post-date files now + 1 month
$day = 24 * 60 * 60;            # 24 hours of seconds
$later = time() + 30 * $day;    # 30 days is about a month
utime $later, $later, @ARGV;
