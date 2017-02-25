use v5.14;
use strict;
use warnings;
use warnings FATAL => "utf8";  # throw encoding error exceptions
use open qw(:std :utf8);

use Unicode::Normalize qw(NFD NFC);

while (my $line = <>) {
    $line = NFD($line);
    ...
} continue {
    print NFC($line);
}
