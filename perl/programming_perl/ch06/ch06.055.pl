state $coll = new Unicode::Collate::Locale::
               locale => "de__phonebook",
           ;

if ($coll->eq($a, $b)) { ... }
