use Storable qw(lock_nstore);
lock_nstore(\%TV, "tvdata.storable");
