if ($sw eq "-v") {
    # init local array with global array
    local @ARGV = @ARGV;
    unshift(@ARGV, "echo");
    system @ARGV;
}
# @ARGV restored
