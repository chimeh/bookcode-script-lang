if ($var =~ /^\p{alpha}+$/)   { say "all alphabetic" }
if ($var =~ s/[^\pL\pN]//g)   { say "deleted all nonalphanumerics" }
