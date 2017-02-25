use Tagger;
$_ = "<I>camel</I>";
say "Tagged camel found" if /\tag\w+\tag/;
