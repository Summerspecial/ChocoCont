﻿$packageName = 'QLCplus'
$installerType = 'EXE'
$url = 'http://sourceforge.net/projects/qlcplus/files/4.6.0/QLC%2B_4.6.0.exe/download'
$url64 = $url
$silentArgs = '/S'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes