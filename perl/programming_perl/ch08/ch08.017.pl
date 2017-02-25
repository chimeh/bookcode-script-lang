$foo         = "three humps";
$scalarref   = \$foo;         # $scalarref is now a reference to $foo
$camel_model = $$scalarref;   # $camel_model is now "three humps"
