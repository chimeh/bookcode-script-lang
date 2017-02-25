sub TIEHASH {
     my $self   = shift;
     my $user   = shift || $>;
     my $dotdir = shift || "";

     croak "usage: @{[ &whowasi ]} [USER [DOTDIR]]" if @_;

     $user = getpwuid($user) if $user =~ /^\d+$/;
     my $dir = (getpwnam($user))[7]
             || croak "@{ [&whowasi] }: no user $user";
     $dir .= "/$dotdir" if $dotdir;

     my $node = {
         USER        => $user,
         HOME        => $dir,
         CONTENTS    => {},
         CLOBBER     => 0,
     };

     opendir(DIR, $dir)
             || croak "@{[&whowasi]}: can't opendir $dir: $!";
     for my $dot (grep /^\./ && -f "$dir/$_", readdir(DIR)) {
         $dot =~ s/^\.//;
         $node->{CONTENTS}{$dot} = undef;
     }
     closedir DIR;

     return bless $node, $self;
 }
