use Errno qw(ESRCH EPERM);
if (kill 0 => $minion) {
    say "$minion is alive!";
} elsif ($! == EPERM) {             # changed UID
    say "$minion has escaped my control!";
} elsif ($! == ESRCH) {
    say "$minion is deceased.";  # or zombied
} else {
    warn "Odd; I couldn't check on the status of $minion: $!\n";
}
