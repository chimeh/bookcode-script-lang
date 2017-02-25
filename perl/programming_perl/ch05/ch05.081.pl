/bot\z/      # Matches "robot"
/bot\Z/      # Matches "robot" and "abbot\n"
/bot$/       # Matches "robot" and "abbot\n"
/bot$/m      # Matches "robot" and "abbot\n" and "robot\nrules"

/^robot$/    # Matches "robot" and "robot\n"
/^robot$/m   # Matches "robot" and "robot\n" and "this\nrobot\n"
/\Arobot\Z/  # Matches "robot" and "robot\n"
/\Arobot\z/  # Matches only "robot" — but why didn’t you use eq?
