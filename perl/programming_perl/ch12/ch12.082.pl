croak "No valid field '$field' in object"
    unless exists $data->{$field};
