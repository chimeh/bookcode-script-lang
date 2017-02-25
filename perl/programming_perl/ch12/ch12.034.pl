$steed  = Horse->new(color => "dun");
$foal   = $steed->clone(owner => "EquuGen Guild, Ltd.");

sub clone {
    my $model = shift;
    my $self  = $model->new(%$model, @_);
    return $self;     # Previously blessed by ->new
}
