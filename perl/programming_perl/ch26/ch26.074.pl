while (<>) {
    tr#A-Za-z0-9+/##cd;                   # remove non-base64 chars
    tr#A-Za-z0-9+/# -_#;                  # convert to uuencoded format
    $len = pack("c", 32 + 0.75*length);   # compute length byte
    print unpack("u", $len . $_);         # uudecode and print
}
