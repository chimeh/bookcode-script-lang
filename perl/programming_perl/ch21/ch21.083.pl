use XML::Parser;

$p = XML::Parser->new( Style => "subs" );
setHandlers $p Char => sub { $out[-1] .= $_[1] };

push @out, "";

sub literal {
    $out[-1] .= "C<";
    push @out, "";
}

sub literal_ {
    my $text = pop @out;
    $out[-1] .= $text . ">";
}
...
