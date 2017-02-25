sub maysetenv {
    my($key, $value) = @_;
    $ENV{$key} = $value unless $ENV{$key};
}
