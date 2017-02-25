$code = "1 + int rand(6)";
$die_roll = eval $code;
die if $@;
