use Unicode::Collate;
@alphabetized_list = Unicode::Collate->new->sort(@list);
