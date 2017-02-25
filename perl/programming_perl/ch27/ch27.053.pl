use DB_File;
$db = dbmopen(%aliases, "/etc/mail/aliases", undef)
  || die "can't dbmopen /etc/mail/aliases: $!";
$db->Filter_Push("null");
$alias = $aliases{"postmaster"};
print "postmaster is aliased to $alias\n";
