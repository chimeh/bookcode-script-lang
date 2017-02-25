sub import { overload::constant ( integer => \&integer_handler,
                                  float   => \&float_handler,
                                  binary  => \&base_handler,
                                  q       => \&string_handler,
                                  qr      => \&regex_handler ) }
