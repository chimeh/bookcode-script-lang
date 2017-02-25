@allfiles = grep { $_ ne "." && $_ ne ".." } readdir THISDIR;
@allfiles = grep { ! /^[.][.]?\z/ } readdir THISDIR;
@allfiles = grep { ! /^\.{1,2}\z/ } readdir THISDIR;
@allfiles = grep !/^\.\.?\z/, readdir THISDIR;
