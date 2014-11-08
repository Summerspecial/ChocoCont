$packageName = 'Natron'
$installerType = 'MSI'
$url = 'https://sourceforge.net/projects/natron/files/Natron_Windows_install_x86-32bit_v0.9.5.msi/download'
$url64 = 'https://sourceforge.net/projects/natron/files/Natron_Windows_install_x86-64bit_v0.9.5.msi/download'
$silentArgs = '/quiet'
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
