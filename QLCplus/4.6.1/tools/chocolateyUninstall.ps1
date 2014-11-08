try {
  $processor = Get-WmiObject Win32_Processor
  $is64bit = $processor.AddressWidth -eq 64
  if ($is64bit) {
    $unpath = "${Env:SystemDrive}\QLC+\uninstall.exe"
  } else {
    $unpath = "${Env:SystemDrive}\QLC+\uninstall.exe"
  }
  Uninstall-ChocolateyPackage 'QLCplus' 'EXE' '/S' "$unpath" -validExitCodes @(0)
  
  # the following is all part of error handling
  Write-ChocolateySuccess 'QLCplus'
} catch {
  Write-ChocolateyFailure 'QLCplus' "$($_.Exception.Message)"
  throw
}