$old_fh = select(HANDLE);
$~ = "NEWNAME";
select($old_fh);
