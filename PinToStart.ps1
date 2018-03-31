<# This script can be called through a log-on script to automatically
deploy the Powershell shortcut on the desktop. On Windows 10, the script adds both the Windows
PowerShell ISE and the Windows PowerShell console to both the Start screen and the taskbar. On
Windows 7, it adds both to the taskbar and to the Start menu. The script only works for US English–
language operating systems. To make it work in other languages, change the value of $pinToStart
and $pinToTaskBar to the equivalent values in the target language.

#>


$pinToStart = "Pin to Start"
$file = @((Join-Path -Path $PSHOME -childpath "PowerShell.exe"),
(Join-Path -Path $PSHOME -childpath "powershell_ise.exe") )
Foreach($f in $file)
{$path = Split-Path $f
$shell=New-Object -com "Shell.Application"
$folder=$shell.Namespace($path)
$item = $folder.parsename((Split-Path $f -leaf))
$verbs = $item.verbs()
foreach($v in $verbs)
{if($v.Name.Replace("&","") -match $pinToStart){$v.DoIt()}}