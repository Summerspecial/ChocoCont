$packageName = 'MediathekView'
$url = 'http://sourceforge.net/projects/zdfmediathk/files/Mediathek/Mediathek%209/MediathekView_9.zip/download'
$validExitCodes = @(0)

Install-ChocolateyZipPackage "$packageName" "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

try {

  $target = Join-Path "$(Split-Path -parent $MyInvocation.MyCommand.Definition)" "$($packageName)__Start.exe"
  Install-ChocolateyDesktopLink $target
  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}
