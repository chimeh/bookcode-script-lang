use strict "refs";

$ref = \$foo;       # Store "real" (hard) reference
print $$ref;        # Dereferencing is ok

$ref = "foo";       # Store name of global (package) variable
print $$ref;        # WRONG, runtime error under strict refs
