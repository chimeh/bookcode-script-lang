$ob = tie %daemon_dots, "daemon";
$ob->clobber(1);
$daemon_dots{signature} = "A true daemon\n";
