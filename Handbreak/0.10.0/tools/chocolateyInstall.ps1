$packageName = 'HandBrake'
$installerType = 'EXE'
$url = 'http://kent.dl.sourceforge.net/project/handbrake/0.10.0/HandBrake-0.10.0-i686-Win_GUI.exe'
$url64 = 'http://cznic.dl.sourceforge.net/project/handbrake/0.10.0/HandBrake-0.10.0-x86_64-Win_GUI.exe'

$silentArgs = '/S'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes