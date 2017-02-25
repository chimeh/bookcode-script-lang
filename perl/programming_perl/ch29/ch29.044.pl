Parentheses missing around "my" list at diag.pl line 6 (#1)
    (W parenthesis) You said something like

        my $foo, $bar = @_;

    when you meant

        my ($foo, $bar) = @_;

    Remember that "my", "our", "local" and "state" bind 
    tighter than comma.

Name "main::y" used only once: possible typo at diag.pl line 8 (#2)
    (W once) Typographical errors often show up as unique variable names.
    If you had a good reason for having a unique name, then just mention 
    it again somehow to suppress the message.  The our declaration is
    provided for this purpose.

    NOTE: This warning detects symbols that have been used only once so 
    $c, @c, %c, *c, &c, sub c{}, c(), and c (the filehandle or format) 
    are considered the same; if a program uses $c only once but also uses
    any of the others it will not trigger this warning.

Name "main::b" used only once: possible typo at diag.pl line 6 (#2)
Name "main::NOWHERE" used only once: possible typo at diag.pl line 2 (#2)
Name "main::x" used only once: possible typo at diag.pl line 8 (#2)

print() on unopened filehandle NOWHERE at diag.pl line 2 (#3)
    (W unopened) An I/O operation was attempted on a filehandle that was
    never initialized.  You need to do an open(), a sysopen(), or a socket()
    call, or call a constructor from the FileHandle package.

  This message should be unadorned.
  This is a user warning at diag.pl line 4.

DIAGNOSTIC TESTER: Please enter a<CR> here:

Use of uninitialized value $y in division (/) at diag.pl line 8, <STDIN> 
    line 1 (#4) (W uninitialized) An undefined value was used as if it 
    were already defined.  It was interpreted as a "" or a 0, but maybe 
    it was a mistake. To suppress this warning assign a defined value to 
    your variables.

    To help you figure out what was undefined, perl will try to tell you 
    the name of the variable (if any) that was undefined. In some cases 
    it cannot do this, so it also tells you what operation you used the 
    undefined value in.  Note, however, that perl optimizes your program 
    and the operation displayed in the warning may not necessarily appear 
    literally in your program.  For example, "that $foo" is usually 
    optimized into "that ". $foo, and the warning will refer to the 
    concatenation (.) operator, even though there is no . in your program.

Use of uninitialized value $x in division (/) at diag.pl line 8, 
    <STDIN> line 1 (#4)

Illegal division by zero at diag.pl line 8, <STDIN> line 1 (#5)
    (F) You tried to divide a number by 0.  Either something was wrong in
    your logic, or you need to put a conditional in to guard against
    meaningless input.

Uncaught exception from user code:
  Illegal division by zero at diag.pl line 8, <STDIN> line 1.
 at diag.pl line 8
