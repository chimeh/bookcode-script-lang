chomp($answer = <STDIN>);
if    ("SEND"  =~ /^\Q$answer/i) { say "Action is send"  }
elsif ("STOP"  =~ /^\Q$answer/i) { say "Action is stop"  }
elsif ("ABORT" =~ /^\Q$answer/i) { say "Action is abort" }
elsif ("LIST"  =~ /^\Q$answer/i) { say "Action is list"  }
elsif ("EDIT"  =~ /^\Q$answer/i) { say "Action is edit"  }
