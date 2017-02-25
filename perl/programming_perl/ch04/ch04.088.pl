use v5.14;
state $bag    = { };
state $vector = [ ];

...
unless ($bag->{$item}) { $bag->{$item} = 1 }
...
push @$vector, $item;
