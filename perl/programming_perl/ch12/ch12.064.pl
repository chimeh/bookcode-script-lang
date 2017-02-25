if ($obj->can("methname") || $obj->can("AUTOLOAD")) {
    $obj->methname();
}
