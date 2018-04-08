#< Returns statistics such as word count, number of lines in the file, and number of characters.>#

Function Get-TextStatistics($path)
{
Get-Content -path $path |
Measure-Object -line -character -word
}
