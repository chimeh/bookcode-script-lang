$a = "nobody";
$b = "bodysnatcher";
if ("$a $b" =~ /^(\w+)(\w+) \2(\w+)$/) {
    say "$2 overlaps in $1-$2-$3";
}
