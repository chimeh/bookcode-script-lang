chdir($dir)                 or die "chdir $dir: $!";
open(FOO, '<', $file)       or die "open $file: $!";
@lines = <FOO>              or die "$file is empty?";
close(FOO)                  or die "close $file: $!";
