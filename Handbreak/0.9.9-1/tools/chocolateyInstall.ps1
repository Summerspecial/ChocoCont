$packageName = 'HandBrake'
$installerType = 'EXE'
$url = 'http://sourceforge.net/projects/handbrake/files/0.9.9/HandBrake-0.9.9-1_i686-Win_GUI.exe/download'
$url64 = $url
$silentArgs = '/S'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes