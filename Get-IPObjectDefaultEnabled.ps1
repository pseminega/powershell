Function Get-IPObject([bool]$IPEnabled = $true)
{
Get-WmiObject -class Win32_NetworkAdapterConfiguration -Filter "IPEnabled = $IPEnabled"
} #end Get-IPObject