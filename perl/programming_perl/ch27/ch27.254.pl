$graffito = "fee fie foe foo";
pos $graffito = 4;  # Skip the fee, start at fie
while ($graffito =~ m/e/g) {
    say pos $graffito;
}
