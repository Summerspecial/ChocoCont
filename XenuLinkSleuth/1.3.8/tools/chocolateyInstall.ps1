$packageName = 'XenuLinkSleuth'
$installerType = 'EXE'
$url = 'http://home.snafu.de/tilman/XENU.ZIP'
$silentArgs = '/S'
$validExitCodes = @(0)

$toolsDir = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
Install-ChocolateyZipPackage "$packageName" "$url" "$toolsDir"


try { 
  $FileFullPath = get-childitem $toolsDir -recurse -include *.exe | select -First 1  
  Install-ChocolateyInstallPackage "$packageName" "$installerType" "$silentArgs" "$FileFullPath" -validExitCodes $validExitCodes

  Write-ChocolateySuccess "$packageName"
} catch {
  Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
  throw
}
