$packageName = 'Natron'
$installerType = 'MSI'
$url = 'http://skylink.dl.sourceforge.net/project/natron/Natron_Windowsx86_32bits_v1.0.0-RC2.msi'
$url64 = 'http://switch.dl.sourceforge.net/project/natron/Natron_Windows_x86_64bits_v1.0.0-RC2.msi'
$silentArgs = '/quiet'
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes

