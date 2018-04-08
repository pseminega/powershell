#Requires -Version 5.0
Function Resolve-ZipCode([int]$zip)
{
$URI = "http://www.webservicex.net/uszip.asmx?WSDL"
$zipProxy = New-WebServiceProxy -uri $URI -namespace WebServiceProxy -class ZipClass
$zipProxy.getinfobyzip($zip).table
} #end Get-ZipCode