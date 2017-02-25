$semop = pack "s*", $semnum, -1, 0;
semop($semid, $semop)     || die "Semaphore trouble: $!";
