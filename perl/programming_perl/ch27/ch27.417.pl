for (@hash{keys %hash}) { s/foo/bar/g }   # old way
for (values %hash)      { s/foo/bar/g }   # now changes values
