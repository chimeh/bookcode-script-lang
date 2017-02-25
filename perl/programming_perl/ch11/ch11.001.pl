use Hash::Util qw(lock_keys);

lock_keys( my %hash, qw(name location) );
