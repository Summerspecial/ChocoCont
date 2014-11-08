$packageName = 'Shotcut'
$installerType = 'EXE'
$url = 'https://github.com/mltframework/shotcut/releases/download/v14.05/shotcut-win32-140502.exe'
$url64 = $url
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes