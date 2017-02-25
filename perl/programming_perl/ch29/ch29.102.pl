use vmsish;        # all features

use vmsish "exit";
use vmsish "hushed";
use vmsish "status";
use vmsish "time";

no vmsish "hushed";
vmsish::hushed($hush);

use vmsish;        # all features
no vmsish "time";  # but turn off 'time'
