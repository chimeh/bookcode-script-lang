my $str = "widget";               # Lexically scoped variable

format Nice_Output =
Test: @<<<<<<<< @||||| @>>>>>
      $str,     $%,    '$' . int($num)
.

local $~ = "Nice_Output";         # Select our format
local $num = $cost * $quantity;   # Dynamically scoped variable

write;
