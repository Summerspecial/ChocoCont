$packageName = 'Amaya'
$installerType = 'EXE'
$url = 'http://www.w3.org/Amaya/Distribution/amaya-WinXP-11.4.4.exe'
$url64 = $url
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes