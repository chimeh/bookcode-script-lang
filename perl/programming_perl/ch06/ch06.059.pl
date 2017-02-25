use v5.14;
use utf8;
use warnings;

use Unicode::UCD       qw( charinfo );
use Unicode::Normalize qw( NFD );

## uncomment next line for decomposed forms
my $mystery = ## NFD
                "७¾çὯ";

for my $chr (split //, $mystery) {
    my $ci = charinfo(ord $chr);
    print "U+", $$ci{code};
    printf ' \N{%s}'."\n\t",  $$ci{name};
    print  " gc=",            $$ci{category};
    print  " script=",        $$ci{script};
    print  " BC=",            $$ci{bidi};
    print  " mirrored=",      $$ci{mirrored};
    print  " ccc=",           $$ci{combining};
    print  " nv=",            $$ci{numeric};
    print  "\n";
}
