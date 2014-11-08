$packageName = 'MakeHuman'
$url = 'http://download.tuxfamily.org/makehuman/releases/1.0.2/makehuman-1.0.2-win32.zip'

Install-ChocolateyZipPackage "$packageName" "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"