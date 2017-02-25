our @EXPORT    = qw($camel %wolf ram);              # Export by default
our @EXPORT_OK = qw(leopard @llama $emu);           # Export by request
our %EXPORT_TAGS = (                                # Export as group
                     camelids => [qw($camel @llama)],
                     critters => [qw(ram $camel %wolf)],
                   );
