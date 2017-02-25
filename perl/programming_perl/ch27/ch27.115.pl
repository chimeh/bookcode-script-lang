while (($name, $passwd, $gid) = getgrent()) {
    $gid{$name} = $gid;
}
