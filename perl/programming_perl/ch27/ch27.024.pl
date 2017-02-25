@cannot = grep {not chmod(0755, $_) } "file1", "file2", "file3";
die "$0: could not chmod @cannot" if @cannot;
