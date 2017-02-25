my $type = 'Camel';

package Animal;

print "Type is $type\n";    # the lexical $type, so, "Camel"
$type = 'Ram';

package Zoo;

print "Type is $type\n";    # the lexical $type, so, "Ram"
