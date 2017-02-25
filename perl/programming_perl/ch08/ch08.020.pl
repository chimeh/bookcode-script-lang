$bar = ${$scalarref};
push(@{$arrayref}, $filename);
${$arrayref}[0] = "January";
@{$arrayref}[4..6] = qw/May June July/;
${$hashref}{"KEY"} = "VALUE";
@{$hashref}{"KEY1","KEY2"} = ("VAL1","VAL2");
&{$coderef}(1,2,3);
