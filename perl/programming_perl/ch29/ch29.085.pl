use sort "stable";          # guarantee stability
use sort "_quicksort";      # use a quicksort algorithm
use sort "_mergesort";      # use a mergesort algorithm
use sort "defaults";        # revert to default behavior
no  sort "stable";          # stability not important

use sort "_qsort";          # alias for quicksort

my $current;
BEGIN {
   $current = sort::current();     # identify prevailing algorithm
}
