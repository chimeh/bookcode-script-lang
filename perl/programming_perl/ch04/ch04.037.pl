$sum = 0;
for my $value (@array) { $sum += $value }

for my $count (10,9,8,7,6,5,4,3,2,1,"BOOM") {  # do a countdown
    say $count;
    sleep(1);
}

for (reverse "BOOM", 1 .. 10) {                # same thing
    say;
    sleep(1);
}

for my $field (split /:/, $data) {             # any LIST expression
    say "Field contains: '$field'";
}

for my $key (sort keys %hash) {
    say "$key => $hash{$key}";
}
