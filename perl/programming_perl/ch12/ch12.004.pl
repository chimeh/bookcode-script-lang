no feature "switch"; # for given forgiveness (see below)
$mage = summon Wizard "Gandalf";
$nemesis = summon Balrog home => "Moria", weapon => "whip";
move $nemesis "bridge";
speak $mage "You cannot pass";
break $staff;               # safer to use: break $staff ();
