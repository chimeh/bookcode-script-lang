$dec_perms = (stat("filename"))[2] & 07777;
$oct_perm_str = sprintf "%o", $dec_perms;
