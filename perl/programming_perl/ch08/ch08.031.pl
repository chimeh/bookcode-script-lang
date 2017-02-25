@reflist = \(@x);                    # Interpolate array, then get refs
@reflist = map { \$_ } @x;           # Same thing
