$mode = (stat($filename))[2];
printf "Permissions are %04o\n", $mode & 07777;
