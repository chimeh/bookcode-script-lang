$objref = Doggie::->new(Tail => "short", Ears => "long");  #1
$objref = new Doggie:: Tail => "short", Ears => "long";    #2
$objref = Doggie->new(Tail => "short", Ears => "long");    #3
$objref = new Doggie Tail => "short", Ears => "long";      #4
