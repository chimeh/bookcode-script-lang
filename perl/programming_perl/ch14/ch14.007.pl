$clot = tie $camel, "ScalarFile", "/tmp/camel.lot";
$dromedary = $camel;          # through the implicit interface
$dromedary = $clot->FETCH();  # same thing, but explicitly
