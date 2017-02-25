LINE: while (<MAILMSG>) {
    last LINE if /^$/; # exit when done with header
    # rest of loop here
}
