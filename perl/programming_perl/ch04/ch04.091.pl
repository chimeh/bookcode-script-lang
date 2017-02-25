my $i = 10;
{
    my $i = 99;
    ...
}
# Code compiled here sees outer 10 variable.

local $PROGRAM_NAME = "waiter";
{
    local $PROGRAM_NAME = "server";
    # Code called here sees "server".
    ...
}
# Code executed here sees restored "waiter" value.
