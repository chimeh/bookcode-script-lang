sub DESTROY {
    my $self = shift();
    return unless $self->{OWNER} == $$;  # avoid dup dealloc
    shmctl($self->{SHMKEY}, IPC_RMID, 0)    || warn "shmctl RMID: $!";
    $self->{SEMA}->remove()                 || warn "sema->remove: $!";
}
