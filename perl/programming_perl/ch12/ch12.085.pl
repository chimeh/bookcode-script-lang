carp "Unmediated access denied to unfriendly class ${cpack}::"
    unless $cpack->isa(__PACKAGE__);
