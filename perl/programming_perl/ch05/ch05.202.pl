$np = qr{
           \(
           (?:
              (?> [^()]+ )    # Non-parens without backtracking
            |
              (??{ $np })     # Group with matching parens
           )*
           \)
        }x;
