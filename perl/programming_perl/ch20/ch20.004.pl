system @args;              # Won't call the shell unless @args == 1.
system { $args[0] } @args; # Bypasses shell even with one-argument list.
