$method = "summon";
$mage = Wizard->$method("Gandalf");  # Invoke Wizard->summon

$travel = $companion eq "Shadowfax" ? "ride" : "walk";
$mage->$travel("seven leagues");     # Invoke $mage->ride or $mage->walk
