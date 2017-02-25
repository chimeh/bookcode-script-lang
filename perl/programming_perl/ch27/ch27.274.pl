$line = <STDIN>;
$line = readline(STDIN);          # same thing
$line = readline(*STDIN);         # same thing
$line = readline(\*STDIN);        # same thing

open(my $fh, "<&=STDIN") || die;
bless($fh => "AnyOldClass");
$line = readline($fh);            # same thing
