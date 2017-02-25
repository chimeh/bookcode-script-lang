use v5.14;
use utf8;
my @exes = qw( x⁷ x⁰ x⁸ x³ x⁶ x⁵ x⁴ x² x⁹ x¹ );
@exes = sort @exes;
say "@exes";

# prints: x² x³ x¹ x⁰ x⁴ x⁵ x⁶ x⁷ x⁸ x⁹
