use warnings;   # same as importing "all"
no warnings;    # same as unimporting "all"

use warnings::register;
if (warnings::enabled()) {
    warnings::warn("some warning");
}

if (warnings::enabled("void")) {
    warnings::warn("void", "some warning");
}

warnings::warnif("Warnings are on");
warnings::warnif("number", "Something is wrong with a number");
