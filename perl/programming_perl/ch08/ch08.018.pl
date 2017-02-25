$bar = $$scalarref;

push(@$arrayref, $filename);
$$arrayref[0] = "January";            # Set the first element of @$arrayref
@$arrayref[4..6] = qw/May June July/; # Set several elements of @$arrayref

%$hashref = (KEY => "RING", BIRD => "SING");  # Initialize whole hash
$$hashref{KEY} = "VALUE";                     # Set one key/value pair
@$hashref{"KEY1","KEY2"} = ("VAL1","VAL2");   # Set two more pairs

&$coderef(1,2,3);

say $handleref "output";
