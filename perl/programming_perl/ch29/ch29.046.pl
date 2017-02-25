use feature ":5.10";  # this is a "feature bundle"
use feature qw(say state switch unicode_strings);

{
    no feature qw(say);
    ...;
}
