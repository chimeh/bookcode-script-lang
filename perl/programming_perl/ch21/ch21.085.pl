print &q(<<"EOT");
:       #!$bin/perl
:       eval 'exec $bin/perl -S \$0 \${1+"\$@"}'
:               if \$running_under_some_shell;
:
EOT
