unless (open(FOO, '<', $foo)) { die "Can't open $foo: $!" }
if (!open(FOO, '<', $foo))    { die "Can't open $foo: $!" }

die "Can't open $foo: $!"     unless open(FOO, '<', $foo);
die "Can't open $foo: $!"     if !open(FOO, '<', $foo);

open(FOO, '<', $foo)          || die "Can't open $foo: $!";
open(FOO, '<', $foo)          or die "Can't open $foo: $!";
