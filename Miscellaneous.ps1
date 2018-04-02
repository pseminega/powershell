<# Miscellanious commands

#>

# Check available bytes

typeperf "\memory\available bytes"

# Current startup configuration

bcdedit

# Create a file with 1000 bytes

fsutil file createnew mytestfile.txt 1000

# Create a listing of the functions available in the function drive

dir function: | Where { $_.name -like 'conv*'} |
Format-Table -Property name, definition -AutoSize

# Get BIOS information 

Get-CimInstance win32_bios -ComputerName dc1, c10
