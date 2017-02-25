$/ = \32768; # or \"32768" or \$scalar_var_containing_32768
open(FILE, $myfile);
$record = <FILE>;
