@a = @b || @c;             # This doesn't do the right thing
@a = scalar(@b) || @c;     # because it really means this.
@a = @b ? @b : @c;         # This works fine, though.
