use ScalarFile;       # load ScalarFile.pm
tie $camel, "ScalarFile", "/tmp/camel.lot";
