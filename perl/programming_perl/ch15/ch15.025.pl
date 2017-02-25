use Fcntl qw/F_SETFD F_GETFD/;

printf("INPUT will be %s across execs\n",
    fcntl(INPUT, F_GETFD, 1) ? "closed" : "left open");
