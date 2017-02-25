use 5.014;
use warnings;

use Module::CoreList;

say $_ foreach ( sort keys %{ $Module::CoreList::version{5.014} } );
