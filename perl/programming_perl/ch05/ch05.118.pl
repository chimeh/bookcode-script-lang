use Tie::Hash::NamedCapture;
tie my %first_captured, "Tie::Hash::NamedCapture";
tie my %all_captured,  "Tie::Hash::NamedCapture", all => 1;
