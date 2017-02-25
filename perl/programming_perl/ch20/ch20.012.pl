use re "taint";
# remainder of file now leaves $1 etc tainted
{
    no re "taint";
    # this block now untaints re matches
    if ($num =~ /^(\d+)$/) {
        $num = $1;
    }
}
