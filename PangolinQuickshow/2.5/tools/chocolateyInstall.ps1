$packageName = 'PangolinQuickshow'
$installerType = 'EXE'
$url = 'http://www.pangolin.com/_Files/Setup_QS2.exe'
$url64 = '$url'
$silentArgs = '/S'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes