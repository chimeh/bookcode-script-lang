$count = eval "tr/$oldlist/$newlist/";
die if $@;  # propagates exception from illegal eval contents
