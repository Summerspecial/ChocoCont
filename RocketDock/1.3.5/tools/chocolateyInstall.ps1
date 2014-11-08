$packageName = 'RocketDock'
$installerType = 'EXE'
$url = 'http://files.punklabs.com/RocketDock/RocketDock-v1.3.5.exe'
$url64 = $url
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
