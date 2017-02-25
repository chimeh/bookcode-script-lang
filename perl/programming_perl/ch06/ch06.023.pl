# this works just like perl -CA
if (grep /\P{ASCII}/ => @ARGV) {
   @ARGV = map { decode("UTF-8", $_) } @ARGV;
}
