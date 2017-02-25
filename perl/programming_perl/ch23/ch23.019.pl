#!/usr/bin/perl -00
# catpod - cat out just the pods
while (<>) {
    if (! $inpod) { $inpod = /^=/            }
    if ($inpod)   { $inpod = !/^=cut/; print }
} continue {
    if (eof)      {  close ARGV; $inpod = "" }
}
