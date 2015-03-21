$packageName = 'Antrenamer'
$installerType = 'EXE'
$url = 'http://update.antp.be/renamer/antrenamer2_install.exe'
$silentArgs = '/silent'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes

