"hot cross buns" =~ /cross/;
say "Matched: <$`> $& <$'>";    # Matched: <hot > cross < buns>
say "Left:    <$`>";            # Left:    <hot >
say "Match:   <$&>";            # Match:   <cross>
say "Right:   <$'>";            # Right:   < buns>
