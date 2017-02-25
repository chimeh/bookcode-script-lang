{
  $oldvalue = $var;
  $var = $newvalue;
  some_func();
  ...
}
continue {
  $var = $oldvalue;
}
