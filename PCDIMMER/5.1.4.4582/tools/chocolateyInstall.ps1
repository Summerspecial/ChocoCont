$packageName = 'PCDIMMER'
$installerType = 'EXE'
$url = 'http://sourceforge.net/projects/pcdimmer/files/PC_DIMMER2012/PC_DIMMER2012_5.1.4.4582_Setup.exe/download'
$url64 = $url
$silentArgs = '/verysilent'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
