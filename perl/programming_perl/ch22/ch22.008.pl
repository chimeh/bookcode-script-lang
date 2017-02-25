use File::Spec::Functions;
chdir( updir() );        # go up one directory
$file = catfile( curdir(), "temp", "file.txt" );
