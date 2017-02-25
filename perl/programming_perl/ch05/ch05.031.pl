if ($shire =~ m/Baggins/) { ... }  # search for Baggins in $shire
if ($shire =~ /Baggins/)  { ... }  # search for Baggins in $shire

if ( m#Baggins# )         { ... }  # search right here in $_
if ( /Baggins/ )          { ... }  # search right here in $_
