use Bestiary;                    # Import @EXPORT symbols
use Bestiary ();                 # Import nothing
use Bestiary qw(ram @llama);     # Import the ram function and @llama array
use Bestiary qw(:camelids);      # Import $camel and @llama
use Bestiary qw(:DEFAULT);       # Import @EXPORT symbols
use Bestiary qw(/am/);           # Import $camel, @llama, and ram
use Bestiary qw(/^\$/);          # Import all scalars
use Bestiary qw(:critters !ram); # Import the critters, but exclude ram
use Bestiary qw(:critters !:camelids);
                                 # Import critters, but no camelids
