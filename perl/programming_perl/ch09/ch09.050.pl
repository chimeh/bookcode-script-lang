for $family ( sort { @{$HoA{$b}} <=> @{$HoA{$a}} } keys %HoA ) {
    say "$family: @{ $HoA{$family} }"
}
