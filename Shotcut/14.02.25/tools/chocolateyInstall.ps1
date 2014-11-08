$packageName = 'Shotcut'
$installerType = 'EXE'
$url = 'http://d1av856udzjaks.cloudfront.net/shotcut/shotcut-win32-140225.exe'
$url64 = $url
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes