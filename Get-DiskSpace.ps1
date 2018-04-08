Function Get-DiskSpace($drive,$computer)
{
([wmi]"\\$computer\root\cimv2:Win32_logicalDisk.DeviceID='$drive'").FreeSpace
}