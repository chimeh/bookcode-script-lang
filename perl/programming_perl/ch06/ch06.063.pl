(?(?<=      \w)     # if there is a word character to the left
      (?=   \w)     #    then there must be a  word character to the right
  |   (?!   \w)     #    else there must be no word character to the right
)
