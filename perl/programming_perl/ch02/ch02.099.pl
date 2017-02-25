@files = <$dir/*.[ch]>;         # Works, but avoid.
@files = glob("$dir/*.[ch]");   # Call glob as function.
@files = glob $some_pattern;    # Call glob as operator.
