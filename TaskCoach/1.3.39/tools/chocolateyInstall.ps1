﻿$packageName = 'TaskCoach'
$installerType = 'EXE'
$url = 'http://sourceforge.net/projects/taskcoach/files/taskcoach/Release-1.3.39/TaskCoach-1.3.39-win32.exe/download'
$url64 = $url
$silentArgs = '/VERYSILENT'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes