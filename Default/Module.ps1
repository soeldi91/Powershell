# PowerShell verfügbare Module anzeigen
Get-Module -ListAvailable

# Funktionen bzw. Commands eines Modules anzeigen
Get-Command -Module Az.Accounts

$env:PSModulePath
#C:\Users\dsoldera\OneDrive - Inventx\Dokumente\WindowsPowerShell\Modules
#C:\Program Files\WindowsPowerShell\Modules
#C:\WINDOWS\system32\WindowsPowerShell\v1.0\Modules


$modules = Import-Csv -path ".\powershell_scripts\Default\module.csv"



foreach($module in $modules)
{
    if(get-module -Name $module.Name)
    {
        Install-Module -name $module.Name
        Import-Module -Name $module.Name
    }
}

Get-Module -ListAvailable
#Funktionen im Module prüfen
Get-Command -Module DnsClient
