{
    my $Debugging = 0;          # lexically scoped class datum
    sub debug {
        shift;                  # intentionally ignore invocant
        $Debugging = shift if @_;
        return $Debugging;
    }
}
