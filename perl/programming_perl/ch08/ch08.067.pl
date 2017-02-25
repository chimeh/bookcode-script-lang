use Tie::RefHash;
tie my %h, "Tie::RefHash";
%h = (
    ["this", "here"]   => "at home",
    ["that", "there"]  => "elsewhere",
);
while ( my($keyref, $value) = each %h ) {
    say "@$keyref is $value";
}
