use mro;       # enables next::method and friends globally

use mro "dfs"; # enable DFS MRO for this class (Perl default)
use mro "c3";  # enable C3 MRO for this class
