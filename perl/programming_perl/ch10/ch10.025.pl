my $type = 'Camel';

package Animal {
    our $type = 'Ram';
    print "Type is $type\n";    # the package $type, so, "Ram"
}

package Zoo v3.1.4 {
    print "Type is $type\n";    # the outer $type, so, "Camel"
}
