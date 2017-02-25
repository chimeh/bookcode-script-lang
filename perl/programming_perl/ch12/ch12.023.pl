$obj = { };                 # Get reference to anonymous hash.
bless($obj);                # Bless hash into current package.
bless($obj, "Critter");     # Bless hash into class Critter.
