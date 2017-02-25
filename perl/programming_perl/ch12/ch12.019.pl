$obj = new ElvenRing;               # could be new("ElvenRing")
                                    # or even new(ElvenRing())
$obj = ElvenRing->new;              # could be ElvenRing()->new()

$obj = new ElvenRing::;             # always "ElvenRing"->new()
$obj = ElvenRing::->new;            # always "ElvenRing"->new()
