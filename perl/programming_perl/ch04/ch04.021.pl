my $price = do {
    given ($item) {
        when (["pear", "apple"]) { 1 }
        break when "vote";      # My vote cannot be bought
        1e10  when /Mona Lisa/;
        "unknown";
    }
};
