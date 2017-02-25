use strict;         # Install all three strictures.

use strict "vars";  # Variables must be predeclared
use strict "refs";  # Can't use symbolic references
use strict "subs";  # Bareword strings must be quoted

use strict;         # Install all...
no strict "vars";   # ...then renege on one

use v5.12;          # by default with v5.12.0 or later
