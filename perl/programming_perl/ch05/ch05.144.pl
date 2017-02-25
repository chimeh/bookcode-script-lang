$sign         = '[-+]?';
$digits       = '\d+';
$decimal      = '\.?';
$more_digits  = '\d*';
$number = "$sign$digits$decimal$more_digits";
...
if ($num =~ /^$number$/o) { ... }
