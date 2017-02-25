@x = sort @y;       # ASCII sorting order
{
    use locale;
    @x = sort @y;   # Locale-defined sorting order
}
@x = sort @y;       # ASCII sorting order again
