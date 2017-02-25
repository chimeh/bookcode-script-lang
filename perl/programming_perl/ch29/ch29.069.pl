use re "taint";
# Contents of $match are tainted if $dirty was also tainted
($match) = ($dirty =~ /^(.*)$/s);

# Allow code interpolation:
use re "eval";
$pat = '(?{ $var = 1 })';      # embedded code execution
/alpha${pat}omega/;            # won't fail unless under -T
                               # and $pat is tainted

use re "/a";                   # by default, every pattern 
                               #     has the /a flag
use re "/msx";                 # by default, every pattern 
                               #     has the /msx flags

use re "debug";                # like "perl -Dr"
/^(.*)$/s;                     # output debugging info during
                               #     compile time and runtime

use re "debugcolor";           # same as "debug",
                               #    but with colored output

use re qw(Debug LIST);         # fine control of debugging output
