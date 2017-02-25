sub by_sales_then_dept {
    $sales_amount{$b} <=> $sales_amount{$a}
                       ||
                   $a cmp $b
}

for $dept (sort by_sales_then_dept keys %sale_amount) {
    say "$dept => $sales_amount{$dept}";
}
