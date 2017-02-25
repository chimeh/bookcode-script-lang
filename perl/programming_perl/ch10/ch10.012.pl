*sym =   *oldvar;
*sym =  \*oldvar;       # autodereference
*sym = *{"oldvar"};     # explicit symbol table lookup
*sym =   "oldvar";      # implicit symbol table lookup
