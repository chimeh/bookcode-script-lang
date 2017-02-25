local $^I   = ".orig";
local @ARGV = glob("*.c");
while (<>) {
    s/foo/bar/g;
    print;
}
