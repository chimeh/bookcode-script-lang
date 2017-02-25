package ShMem;
 use IPC::SysV qw(IPC_PRIVATE IPC_RMID IPC_CREAT S_IRWXU);
 use IPC::Semaphore;
 sub MAXBUF() { 2000 }

 sub alloc {    # constructor method
     my $class = shift();
     my $value = @_ ? shift() : "";

     my $key = shmget(IPC_PRIVATE, MAXBUF, S_IRWXU) || die "shmget: $!";
     my $sem = IPC::Semaphore->new(IPC_PRIVATE, 1, S_IRWXU | IPC_CREAT)
                          or die "IPC::Semaphore->new: $!";
     $sem->setval(0,1)    or die "sem setval: $!";

     my $self = bless {
         OWNER   => $$,
         SHMKEY  => $key,
         SEMA    => $sem,
     } => $class;

     $self->put($value);
     return $self;
 }
