$arg = shift(@ARGV);          # $arg is now tainted (due to @ARGV).
$hid = "$arg, 'bar'";         # $hid also tainted (due to $arg).
$line = <>;                   # Tainted (reading from external file).
$path = $ENV{PATH};           # Tainted due to %ENV, but see below.
$mine = "abc";                # Not tainted.

system "echo $mine";          # Insecure until PATH set.
system "echo $arg";           # Insecure: uses sh with tainted $arg.
system "echo", $arg;          # OK once PATH set (doesn't use sh).
system "echo $hid";           # Insecure two ways: taint, PATH.

$oldpath = $ENV{PATH};        # $oldpath is tainted (due to %ENV).
$ENV{PATH} = "/bin:/usr/bin"; # (Makes it OK to execute other programs.)
$newpath = $ENV{PATH};        # $newpath is NOT tainted.

delete @ENV{qw{IFS
               CDPATH
               ENV
               BASH_ENV}};    # Makes %ENV safer.

system "echo $mine";          # OK, is secure once path is reset.
system "echo $hid";           # Insecure via tainted $hid.

open(OOF, "< $arg");          # OK (read-only opens not checked).
open(OOF, "> $arg");          # Insecure (trying to write to tainted arg).

open(OOF, "echo $arg|")       # Insecure due to tainted $arg, but...
    || die "can't pipe from echo: $!";

open(OOF,"-|")                # Considered OK: see below for taint
    || exec "echo", $arg      #   exemption on exec'ing a list.
    || die "can't exec echo: $!";

open(OOF,"-|", "echo", $arg)  # Same as previous, likewise OKish.
    || die "can't pipe from echo: $!";

$shout = `echo $arg`;         # Insecure via tainted $arg.
$shout = `echo abc`;          # $shout is tainted due to backticks.
$shout2 = `echo $shout`;      # Insecure via tainted $shout.

unlink $mine, $arg;           # Insecure via tainted $arg.
umask $arg;                   # Insecure via tainted $arg.

exec "echo $arg";             # Insecure via tainted $arg passed to shell.
exec "echo", $arg;            # Considered OK! (But see below.)
exec "sh", "-c", $arg;        # Considered OK, but isn"t really!
