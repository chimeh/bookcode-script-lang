$exit_value  = $? >> 8;
$signal_num  = $? & 127;    # or 0x7f, or 0177, or 0b0111_1111
$dumped_core = $? & 128;    # or 0x80, or 0200, or 0b1000_0000
