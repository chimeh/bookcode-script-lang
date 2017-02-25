sub TIESCALAR { bless \$_[1], $_[0] }    # WRONG, 
                                         # could refer to global.
