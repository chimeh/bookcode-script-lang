use Carp;
eval {
    function_that_does_everything();
    1;
} || confess "$0: Caught unexpected exception: $@";
