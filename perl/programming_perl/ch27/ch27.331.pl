# sort from highest to lowest department sales
sub bysales { $sales_amount{$b} <=> $sales_amount{$a} }

for $dept (sort bysales keys %sale_amount) {
    say "$dept => $sales_amount{$dept}";
}
