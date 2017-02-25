$days{'February 29th'}   # Ok.
$days{"February 29th"}   # Also ok. "" doesn't have to interpolate.
$days{ February 29th }   # WRONG, produces parse error.
