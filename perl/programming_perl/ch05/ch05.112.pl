m{
    (?| (\d+)  \s+ (\pL+)   # these are $1 and $2
      | (\pL+) \s+ (\d+)    # and so is this pair!
    )
}x
