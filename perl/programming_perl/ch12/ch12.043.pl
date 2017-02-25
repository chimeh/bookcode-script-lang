use parent qw(Horse Donkey);   # finds Horse::Color first
use parent qw(Donkey Horse);   # finds Equine::Color first
