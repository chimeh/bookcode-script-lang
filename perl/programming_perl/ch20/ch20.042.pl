$sandbox->permit( qw(print) );
$sandbox->reval(
    q($master = 'Dave Arneson'; print "master is now $main::master\n";)
);
if ($@) {
    die "Couldn't compile code in box: $@";
}
