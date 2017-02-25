@reflist = \(@x, (@y));              # But only single aggregates expand
@reflist = (\@x, map { \$_ } @y);    # Same thing
