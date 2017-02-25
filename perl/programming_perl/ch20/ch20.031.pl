# Keep trying names until we get one that's brand new.
use POSIX;
do {
    $name = tmpnam();
} until sysopen(TMP, $name, O_RDWR | O_CREAT | O_EXCL, 0600);
# Now do I/O using TMP handle.
