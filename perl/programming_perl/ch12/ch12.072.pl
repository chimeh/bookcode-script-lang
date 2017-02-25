$him = Person->new();
$him->set_name("Frodo");
$him->set_name( ucfirst($him->get_name) );
