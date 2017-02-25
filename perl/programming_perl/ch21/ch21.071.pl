#!/usr/bin/perl -n
$comments++, next LINE if /#/;
$blank++, next LINE    if /^\s*$/;
last LINE              if /^__END__/;
$code++;

END { print "comment = $comments\nblank = $blank\ncode = $code\n" }
