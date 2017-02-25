use Encode qw(encode decode);

# assuming $uni_key and $uni_value are abstract Unicode strings

$enc_key   = encode("UTF-8", $uni_key);
$enc_value = encode("UTF-8", $uni_value);
$dbhash{$enc_key} = $enc_value;
