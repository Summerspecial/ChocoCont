$packageName = 'MakeHuman'
$url = 'http://download.tuxfamily.org/makehuman/releases/1.0.1/makehuman-1.0.1-win32.zip'

Install-ChocolateyZipPackage "$packageName" "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"