use v5.14;
use utf8;
use Unicode::Collate;
my @exes = qw( x⁷ x⁰ x⁸ x³ x⁶ x⁵ x⁴ x² x⁹ x¹ );
@exes = Unicode::Collate->new->sort(@exes);
say "@exes";

# prints: x⁰ x¹ x² x³ x⁴ x⁵ x⁶ x⁷ x⁸ x⁹
