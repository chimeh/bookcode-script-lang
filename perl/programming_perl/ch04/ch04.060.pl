goto(("FOO", "BAR", "GLARCH")[$i]);         # hope 0 <= i < 3

@loop_label = qw/FOO BAR GLARCH/;
goto $loop_label[rand @loop_label];         # random teleport
