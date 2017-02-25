while (defined($_ = <STDIN>)) { print $_ }    # the longest way
while ($_ = <STDIN>) { print }                # explicitly to $_
while (<STDIN>) { print }                     # the short way
for (;<STDIN>;) { print }                     # while loop in disguise
print $_ while defined($_ = <STDIN>);         # long statement modifier
print while $_ = <STDIN>;                     # explicitly to $_
print while <STDIN>;                          # short statement modifier
