END {
    $? = 1 if $? == 255;  # die would make it 255
}
