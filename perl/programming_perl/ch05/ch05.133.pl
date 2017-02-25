#!/usr/bin/perl
while (<>) {
    print if /^__DATA__|^__END__/;
}
