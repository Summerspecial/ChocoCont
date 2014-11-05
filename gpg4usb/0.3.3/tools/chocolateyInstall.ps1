$packageName = 'gpg4usb'
$url = 'http://www.gpg4usb.org/gpg4usb-0.3.3.zip'
$validExitCodes = @(0)Install-ChocolateyZipPackage "$packageName" "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"