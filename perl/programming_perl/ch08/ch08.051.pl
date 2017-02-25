$name = "bam";
$$name = 1;                # Sets $bam
$name->[0] = 4;            # Sets the first element of @bam
$name->{X} = "Y";          # Sets the X element of %bam to Y
@$name = ();               # Clears @bam
keys %$name;               # Yields the keys of %bam
&$name;                    # Calls &bam
