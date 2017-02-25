use 5.012;
use warnings;

# Bonus functionality: prints out '!!' in front of broken links

say "$_ -> " . ( -e $_ ? '' : '!!' ) . readlink foreach grep { -l } glob '* .*';
