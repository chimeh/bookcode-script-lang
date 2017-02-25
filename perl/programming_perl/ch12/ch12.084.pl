carp "Unmediated access denied to foreign package ${cpack}::"
    unless $cpack eq __PACKAGE__;
