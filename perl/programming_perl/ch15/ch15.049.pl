sub get {
     my $self = shift();
     $self->lock;
     my $value = $self->peek(@_);
     $self->unlock;
     return $value;
 }
 sub peek {
     my $self = shift();
     shmread($self->{SHMKEY}, my $buff=q(), 0, MAXBUF) || die "shmread: $!";
     substr($buff, index($buff, "\0")) = q();
     return $buff;
 }
 sub put {
     my $self = shift();
     $self->lock;
     $self->poke(@_);
     $self->unlock;
 }
 sub poke {
     my($self,$msg) = @_;
     shmwrite($self->{SHMKEY}, $msg, 0, MAXBUF) || die "shmwrite: $!";
 }
 sub lock {
     my $self = shift();
     $self->{SEMA}->op(0,-1,0) || die "semop: $!";
 }
 sub unlock {
     my $self = shift();
     $self->{SEMA}->op(0,1,0) || die "semop: $!";
 }
