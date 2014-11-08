$packageName = 'Shotcut'
$installerType = 'EXE'
$url = 'https://github.com/mltframework/shotcut/releases/download/v14.08/shotcut-win32-140801.exe'
$url64 = $url
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes