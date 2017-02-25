$re = '\tag\w+\tag';         # This string begins with \t, a tab
$re = Tagger::convert $re;   # expand \tag and \w
print if /$re/;              # $re becomes <.*?>[A-Za-z]+<.*?>
