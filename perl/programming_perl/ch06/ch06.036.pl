substr($cb, 5, 0) = " bien";       # "crèm biene brûlée" or "crème bien brûlée"
$cb =~ s/^\X{5}\K/ bien/;          # "crème bien brûlée"
