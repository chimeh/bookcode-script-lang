undef $/;
$checksum = unpack ("%32C*", <>) % 65535;
