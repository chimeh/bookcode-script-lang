if ($protected) {
    local $SIG{INT} = "IGNORE";
    precious();     # no interrupts during this function
}                   # previous handler (if any) restored
