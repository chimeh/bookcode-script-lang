our $PROGRAM_NAME = "waiter";
{
    our $PROGRAM_NAME = "server";
    # Code called here sees "server".
    ...
}
# Code executed here still sees "server".
