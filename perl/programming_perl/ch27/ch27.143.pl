while (($name, $passwd, $uid) = getpwent()) {
    $uid{$name} = $uid;
}
