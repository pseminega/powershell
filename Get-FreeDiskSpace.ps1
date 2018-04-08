Function Get-FreeDiskSpace($drive,$computer)
{
$driveData = Get-WmiObject -class win32_LogicalDisk -computername $computer -filter "Name = '$drive'"
" $computer free disk space on drive $drive $("{0:n2}" -f ($driveData.FreeSpace/1MB)) MegaBytes "
}

