package Tagger;
use overload;

sub import { overload::constant "qr" => \&convert }

sub convert {
    my $re = shift;
    $re =~ s/ \\tag  /<.*?>/xg;
    $re =~ s/ \\w    /[A-Za-z]/xg;
    return $re;
}

1;
