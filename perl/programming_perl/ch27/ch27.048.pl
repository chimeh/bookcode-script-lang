# Here's the lazy way of getting degrees-to-radians

$pi = atan2(1,1) * 4;
$pi_over_180 = $pi/180;

# Print table
for ($deg = 0; $deg <= 90; $deg++) {
    printf "%3d %7.5f\n", $deg, cos($deg * $pi_over_180);
}
