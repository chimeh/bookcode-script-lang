&foo(1,2,3);    # pass three arguments
foo(1,2,3);     # the same

foo();          # pass a null list
&foo();         # the same

&foo;           # foo() gets current args, like foo(@_), but faster!
foo;            # like foo() if sub foo predeclared, else bareword "foo"
