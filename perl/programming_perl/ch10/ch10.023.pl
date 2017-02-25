my $type = 'Camel';

package Animal;

our $type = 'Ram';
print "Type is $type\n";    # the package $type, so, "Ram"

package Zoo;

print "Type is $type\n";    # the Animal $type, so, "Ram"
