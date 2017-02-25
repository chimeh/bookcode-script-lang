$_ = "I have 4 + 19 dollars and 8/2 cents.\n";
s{ (
        \d+ \s*         # find an integer
        [+*/-]          # and an arithmetical operator
        \s* \d+         # and another integer
   )
}{ $1 }eegx;            # then expand $1 and run that code
print;                  # "I have 23 dollars and 4 cents."
