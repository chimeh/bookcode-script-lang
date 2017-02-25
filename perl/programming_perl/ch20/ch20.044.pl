$sandbox->reval("say_master()");     # Best way.
die if $@;

$sandbox->varglob("say_master")->(); # Call through anonymous glob.

Dungeon::say_master();               # Direct call, strongly discouraged.
