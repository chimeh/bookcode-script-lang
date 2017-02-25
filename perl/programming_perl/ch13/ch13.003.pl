package MyClass;

use overload   "+" => \&myadd,            # coderef
               "<" => "less_than",        # named method
             "abs" => sub { return @_ };  # anonymous subroutine
