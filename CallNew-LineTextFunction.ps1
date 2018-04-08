Function New-Line([string]$stringIn)
{
"-" * $stringIn.length
} #end New-Line
Function Get-TextStats([string[]]$textIn)
{
$textIn | Measure-Object -Line -word -char
} #end Get-TextStats
# *** Entry Point to script ***
"This is a string" | ForEach-Object {$_ ; New-Line $_}

