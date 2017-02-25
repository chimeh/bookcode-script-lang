next unless -M $file > .5;      # files are older than 12 hours
&newfile if -M $file < 0;       # file is newer than process
&mailwarning if int(-A) == 90;  # file ($_) was accessed 90 days ago today
