our $Debugging = 0;     # class datum
sub debug {
    shift;              # intentionally ignore invocant
    $Debugging = shift if @_;
    return $Debugging;
}
