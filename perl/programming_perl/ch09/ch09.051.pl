# Print the whole thing sorted by number of members and name.
for $family ( sort { @{$HoA{$b}} <=> @{$HoA{$a}} } keys %HoA ) {
    say "$family: ", join(", " => sort @{ $HoA{$family} });
}
