#Installation of NTFSSecurity might be needed:: Install-Module -Name NTFSSecurity -RequiredVersion 4.2.4 
$share = "INSERT UNC PATH"
$user = "DOMAIN\User or Group"
Get-ChildItem -Path $share -Recurse |
   Get-NTFSAccess -Account $user -ExcludeInherited |
   Remove-NTFSAccess
