$_ = "Bilbo Baggins's birthday is September 22";
/(.*)'s birthday is (.*)/;
say "Person: $1";
say "Date: $2";
