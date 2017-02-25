$can_perhaps_read = -r "file";      # use the mode bits
{
    use filetest "access";          # intuit harder
    $can_really_read = -r "file";
}
$can_perhaps_read = -r "file";      # use the mode bits again
