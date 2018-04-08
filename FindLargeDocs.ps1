#< Finds document files (files with an extension of .doc, .docx, or .dot) in a folder that is passed to the function when it is called>#

Function Get-Doc($path)
{
Get-ChildItem -Path $path -include *.doc,*.docx,*.dot -recurse
} #end Get-Doc
Filter LargeFiles($size)
{
$_ |
Where-Object { $_.length -ge $size }
} #end LargeFiles