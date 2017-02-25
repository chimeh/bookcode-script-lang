{
    local $SIG{HUP} = "IGNORE";   # exempt myself
    kill(HUP, -$$);               # signal my own process group
}
