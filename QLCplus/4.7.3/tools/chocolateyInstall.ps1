﻿$packageName = 'QLCplus'
$installerType = 'EXE'
$url = 'http://sourceforge.net/projects/qlcplus/files/4.7.3/QLC%2B_4.7.3.exe/download'
$url64 = $url
$silentArgs = '/S'
$validExitCodes = @(0)
Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes