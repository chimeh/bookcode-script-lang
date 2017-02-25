{
    lock($var);
    $var++ if $var == 0;
}
