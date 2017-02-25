use DB_File;
use DBM_Filter;

use Encode qw(encode decode);

$dbobj = tie %dbhash, "DB_File", "pathname";
$dbobj->Filter_Value("utf8");

# $uni_key holds a normal Perl string (abstract Unicode)
$uni_value  = $dbhash{$uni_key};
