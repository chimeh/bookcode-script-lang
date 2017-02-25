if    ($cmd =~ /^exit$/i)     { exit }
elsif ($cmd =~ /^help$/i)     { show_help() }
elsif ($cmd =~ /^watch$/i)    { $watch = 1 }
elsif ($cmd =~ /^mail$/i)     { mail_msg($msg) }
elsif ($cmd =~ /^edit$/i)     { $edited++; editmsg($msg); }
elsif ($cmd =~ /^delete$/i)   { confirm_kill() }
else {
    warn "Unknown command: '$cmd'; Try 'help' next time\n";
}
