$packageName = 'PangolinQuickshowDemo'
$installerType = 'EXE'
$url = 'http://www.pangolin.com/_Files/Setup_QS2_Ev.exe'
$silentArgs = '/S'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes