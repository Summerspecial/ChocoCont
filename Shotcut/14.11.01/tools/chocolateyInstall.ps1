$packageName = 'Shotcut'
$installerType = 'EXE'
$url = 'https://github.com/mltframework/shotcut/releases/download/v14.11/shotcut-win32-141101.exe'
$url64 = $url
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes