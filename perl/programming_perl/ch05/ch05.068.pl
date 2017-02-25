if ($var =~ /\D/)        { warn "contains a nondigit" }
if ($var =~ /[^\w\s.]/)  { warn "contains non-(word, space, dot)" }
