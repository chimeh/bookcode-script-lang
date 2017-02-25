@list = qw(barney fred dino wilma);
@greplist = grep { s/^[bfd]// } @list;
