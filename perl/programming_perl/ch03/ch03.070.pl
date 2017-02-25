use charnames "greek";
my @greek_small =  map { chr } (
                      ord("\N{alpha}") ..  ord("\N{omega}")
                   );
