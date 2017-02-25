local $SIG{__WARN__} = sub { die $_[0] };
eval $proggie;
