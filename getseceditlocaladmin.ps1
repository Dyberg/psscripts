$cred = Get-Credential
$objects = Get-Content c:\users\supsebch\ServerList.txt
ForEach ($object in $objects) {
    Invoke-Command -ComputerName $object -Credential @cred -ScriptBlock { &'c:\path\secedit.exe' /export /cfg c:\OldSettings.txt }
    Invoke-Command -ComputerName $object -Credential @cred -Scriptblock { &Get-LocalGroupMember -Group 'Administrators' | Export-CSV c:\OldLocalAdmins.txt }
}