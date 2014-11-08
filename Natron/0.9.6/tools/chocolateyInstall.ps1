$packageName = 'Natron'
$installerType = 'MSI'
$url = 'http://netcologne.dl.sourceforge.net/project/natron/Natron_Windows_x86-32bit_v0.9.6.msi'
$url64 = 'http://heanet.dl.sourceforge.net/project/natron/Natron_Windows_x86-64bit_v0.9.6.msi'
$silentArgs = '/quiet'
$validExitCodes = @(0) 

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes