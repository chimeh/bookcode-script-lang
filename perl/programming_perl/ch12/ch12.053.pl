use Sub::Name qw(subname);
*Donkey::sound =
    subname 'Donkey::sound' => sub { (shift)->next::method(@_) };
