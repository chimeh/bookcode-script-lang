s/\s*$//gm;   # Trim trailing whitespace on each line in paragraph

while (/^([^:]+):\s*(.*)/gm ) {  # get mail header
    $headers{$1} = $2;
}
