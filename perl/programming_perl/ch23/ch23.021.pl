use v5.14;

package Local::MyText 0.01 {
    use parent "Pod::Simple::Text";
    use Data::Dumper;
    my @links;

    sub links {
        $_[0]->{"".__PACKAGE__}{links} //= [];
    }

    sub start_L {
        my($self, $link) = @_;
        push $self->links, $link->{to}[2];
    }

    sub end_L {
        my($self) = @_;
        my $count = @{$self->links};
        $self->{Thispara} .= "[" . $count . "]";
    }

    sub end_Document {
        my($self) = shift;
        while (my($index, $text) = each $self->links) {
            $self->{Thispara} .=
                "$index http://perldoc.perl.org/$text.html\n";
        }
        $self->emit_par;
    }
}

1;
