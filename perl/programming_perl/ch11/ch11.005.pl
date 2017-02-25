use warnings;
{
    no warnings 'redefine';
    local *badger = sub { ... };
    ...;
}
