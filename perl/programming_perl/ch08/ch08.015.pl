$scalarref = *foo{SCALAR};   # Same as \$foo
$arrayref  = *ARGV{ARRAY};   # Same as \@ARGV
$hashref   = *ENV{HASH};     # Same as \%ENV
$coderef   = *handler{CODE}; # Same as \&handler
$globref   = *foo{GLOB};     # Same as \*foo
$ioref     = *STDIN{IO};     # Er...
$formatref = *foo{FORMAT};   # More er...
