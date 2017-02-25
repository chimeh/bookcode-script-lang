{
    use re "taint";
    ($dir, $file) = $fullpath =~ m!(.*/)(.*)!s;
}
