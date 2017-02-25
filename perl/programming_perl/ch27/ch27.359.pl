use File::stat;
$sb = stat($filename);
printf "File is %s, size is %s, perm %04o, mtime %s\n",
   $filename, $sb->size, $sb->mode & 07777,
   scalar localtime $sb->mtime;
