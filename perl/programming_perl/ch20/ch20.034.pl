use File::Temp "tempfile";
($handle, $filename) = tempfile("plughXXXXXX",
                                DIR => "/var/spool/adventure",
                                SUFFIX = ".dat");
