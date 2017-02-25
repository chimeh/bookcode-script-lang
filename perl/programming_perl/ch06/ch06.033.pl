my $char_length = length($cb);       # 15 or 12
my $graph_count = 0;
$graph_count++ while $cb =~ /\X/g;   # 12
