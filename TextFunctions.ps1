#<The New-Line function creates a string of hyphen characters as long as the length of the input text.>#

Function New-Line([string]$stringIn)
{
"-" * $stringIn.length
} #end New-Line
Function Get-TextStats([string[]]$textIn)
{
$textIn | Measure-Object -Line -word -char
} #end Get-TextStats