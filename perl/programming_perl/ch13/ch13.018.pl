use overload "+" => sub { bless [ \$_[0], \$_[1] ] };
