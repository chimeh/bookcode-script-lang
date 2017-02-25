sub date (;$$);       # Allow zero to two arguments.
sub who (;$$$$);      # Allow zero to four args.
sub ls;               # Allow any number of args.
sub echo ($@);        # Allow at least one arg.

date;
who "am", "i";
ls "-l";
echo "That's all, folks!";
