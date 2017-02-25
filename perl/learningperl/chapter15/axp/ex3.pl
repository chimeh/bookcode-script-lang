use 5.012;
use warnings;

die "Usage: $0 file1 [file2..]\n" if ( !@ARGV );

foreach ( @ARGV ) {
    when ( !-e ) { say "$_ doesn't exist"; }
    when ( !-r _ && !-w _ && !-x _ ) { say "No permissions on $_"; }
    when ( -r _ ) { say "$_ is readable"; continue }
    when ( -w _ ) { say "$_ is writable"; continue }
    when ( -x _ ) { say "$_ is executable"; }
}
