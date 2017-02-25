$start = times();
...
$end = times();
printf "that took %.2f CPU seconds of user time\n",
        $end - $start;
