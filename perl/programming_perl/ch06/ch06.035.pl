substr($cb, -6) = "fraîche";       # "crème brfraîche" or "crème fraîche"
$cb =~ s/\X{6}$/fraîche/;          # "crème fraîche"
