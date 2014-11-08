$packageName = 'ArecaBackup'
$installerType = 'EXE'
$url = 'http://sourceforge.net/projects/areca/files/areca-stable/areca-7.4.5/areca-7.4.5-windows-jre32-setup.exe/download' # download url
$url64 = 'http://sourceforge.net/projects/areca/files/areca-stable/areca-7.4.5/areca-7.4.5-windows-jre64-setup.exe/download' # 64bit URL here or remove - if installer decides, then use $url
$silentArgs = '/S'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes