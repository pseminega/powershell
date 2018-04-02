Function Get-TextStatistics($path)
{
Get-Content -path $path |
Measure-Object -line -character -word
}
