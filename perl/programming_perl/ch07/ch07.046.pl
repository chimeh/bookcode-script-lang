func @foo;              # compiler error, saw @, want $
func split/:/;          # compiler error, saw function, want $
func $s;                # this one is ok -- got real $ symbol
func $a[3];             # and this one
func $h{stuff}[-1];     # or even this
func 2+5;               # scalar expr still a compiler error
func ${ \(2+5) };       # ok, but is the cure worse than the disease?
