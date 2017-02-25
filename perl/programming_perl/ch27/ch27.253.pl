$graffito = "fee fie foe foo";
while ($graffito =~ m/e/g) {
    say pos $graffito;
}
