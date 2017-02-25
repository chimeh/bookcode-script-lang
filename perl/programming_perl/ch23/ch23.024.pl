use v5.14;

package Local::MyTidy 0.01 {
    use parent "Pod::Simple::Text";
    use Perl::Tidy;

    sub end_Verbatim  {
        my($self) = @_;
        Perl::Tidy::perltidy(
            source      => \ $self->{Thispara},
            destination => \ my $out,
            argv        => [qw/-gnu/],
        );
        $self->{Thispara} = $out =~ s/^/    /gmr;
        say { $self->{output_fh} } "", $self->{Thispara};
        return;
    }

}

1;
