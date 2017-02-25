use utf8;
printf "Yes, I like my %s book!\n",
    $i18n eq "french"   ? "chameau" :
    $i18n eq "german"   ? "Kamel"   :
    $i18n eq "japanese" ? "駱駝"    :
                          "camel"
