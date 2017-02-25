$SIG{PIPE} = "Plumber";   # okay, assumes main::Plumber
$SIG{PIPE} = \&Plumber;   # fine, use Plumber from current package
