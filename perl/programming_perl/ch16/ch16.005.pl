use v5.10;
say         "start main running here";
die         "main now dying here\n";
die         "XXX: not reached\n";
UNITCHECK   { say "1st UNITCHECK: done compiling" }
END         { say "1st END: done running"         }
CHECK       { say "1st CHECK: done compiling"     }
INIT        { say "1st INIT: started running"     }
END         { say "2nd END: done running"         }
BEGIN       { say "1st BEGIN: still compiling"    }
INIT        { say "2nd INIT: started running"     }
BEGIN       { say "2nd BEGIN: still compiling"    }
CHECK       { say "2nd CHECK: done compiling"     }
END         { say "3rd END: done running"         }
