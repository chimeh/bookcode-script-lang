# temporarily add a couple of entries to the %digits hash
if ($base12) {
    # (NOTE: We're not claiming this is efficient!)
    local(%digits) = (%digits, T => 10, E => 11);
    parse_num();
}
