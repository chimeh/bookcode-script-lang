if (my ($k,$v) = $string =~ m/(\w+)=(\w*)/) {
    print "KEY $k VALUE $v\n";
}
