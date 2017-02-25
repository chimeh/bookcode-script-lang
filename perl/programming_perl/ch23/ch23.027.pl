use v5.14;
package Local::MyCodePoint 0.01 {
    use parent "Pod::Simple::Text";
    use Data::Dumper;

    sub new {
        my $self = shift;
        my $new = $self->SUPER::new;
        $new->accept_codes("V");
        return $new;
    }
    sub handle_text {
        my($self, $text) = @_;
        $self->{Thispara} .=
        $self->{"".__PACKAGE__}{in_V}
            ?  $self->make_codepoints($text)
            : $text;
    }
    sub make_codepoints {
        $_[1] =~ s/(.)/ sprintf "(U+%04X)", ord($1) /ger;
    }
    sub start_V {
        my($self, $text) = @_;
        $self->{"".__PACKAGE__}{in_V} = 1;
    }
    sub end_V {
        my($self, $text) = @_;
        $self->{"".__PACKAGE__}{in_V} = 0;
    }
}

1;
