@reflist = \fx();
@reflist = map { \$_ } fx();                # Same thing

@reflist = \( fx(), fy(), fz() );
@reflist = ( \fx(), \fy(), \fz() );         # Same thing
@reflist = map { \$_ } fx(), fy(), fz();    # Same thing
