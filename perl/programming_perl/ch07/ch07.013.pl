if ($something_went_awry) {
     return if defined wantarray;  # good, not void context.
     die "Pay attention to my error, you danglesocket!!!\n";
 }
