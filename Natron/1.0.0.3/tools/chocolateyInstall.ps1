$packageName = 'Natron'
$installerType = 'MSI'
$url ='https://master-dl.sourceforge.net/project/natron/Natron_Windowsx86_32bits_v1.0.0-RC3.msi'
$url64 ='https://master-dl.sourceforge.net/project/natron/Natron_Windows_x86_64bits_v1.0.0-RC3.msi'
$silentArgs = '/quiet'
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes

