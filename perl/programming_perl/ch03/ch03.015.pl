my $foo;
$foo = "99"; print ++$foo;   # prints "100"
$foo = "a9"; print ++$foo;   # prints "b0"
$foo = "Az"; print ++$foo;   # prints "Ba"
$foo = "zz"; print ++$foo;   # prints "aaa"
