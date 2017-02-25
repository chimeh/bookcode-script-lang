# set default modifiers for all patterns
use re "/msx";    # patterns in scope have those modifiers added

# now rescind a few for an inner scope
{
    no re "/ms";  # patterns in scope have those modifiers subtracted
    ...
}
