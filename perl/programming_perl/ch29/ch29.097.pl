use utf8;
my $résumé_name = "Björk Guðmundsdóttir";
{
    no utf8;
    my $mojibake = '文字化け';  # probably erroneous
}
