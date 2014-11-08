$packageName = 'Shotcut'
$installerType = 'EXE'
$url = 'https://github.com/mltframework/shotcut/releases/download/v14.10/shotcut-win32-141003.exe'
$url64 = $url
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes