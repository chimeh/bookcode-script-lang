use Unicode::Normalize qw(NFD NFC);

BEGIN {
    use Scalar::Util "set_prototype";
    set_prototype(\&NFD => "_");
    set_prototype(\&NFC => "_");
}
