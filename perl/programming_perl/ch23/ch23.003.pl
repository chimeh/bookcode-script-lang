print "got 1\n";

=for commentary
This paragraph alone is ignored by anyone except the
mythical "commentary" translator.  When it's over, you're
still in pod mode, not program mode.
print "got 2\n";

=cut

# ok, real program again
print "got 3\n";

=begin comment

print "got 4\n";

all of this stuff
here will be ignored
by everyone

print "got 5\n";

=end comment

=cut

print "got 6\n";
