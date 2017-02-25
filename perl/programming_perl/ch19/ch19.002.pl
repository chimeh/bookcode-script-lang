use CPAN::Mini;

CPAN::Mini->update_mirror(
    remote         => "http://cpan.mirrors.comintern.su",
    local          => "/usr/share/mirrors/cpan",
    force          => 0,
    module_filters => [ qr/Acme/i ],
    path_filters   => [
        qr/RJBS/,
        sub { $_[0] =~ /SUNGO/ }
    ],
);
