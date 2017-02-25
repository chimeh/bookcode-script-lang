@out = grep { EXPR } @in;
@out = map { EXPR ? $_ : () } @in
