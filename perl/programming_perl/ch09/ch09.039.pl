$AoA[$i] = [ @array ];   # Safest, sometimes fastest
$AoA[$i] = \@array;      # Fast but risky, depends on my-ness of array
@{ $AoA[$i] } = @array;  # A bit tricky
