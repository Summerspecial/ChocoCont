try {
  $processor = Get-WmiObject Win32_Processor
  $is64bit = $processor.AddressWidth -eq 64
  if ($is64bit) {
    $unpath = "${Env:ProgramFiles(x86)}\PHOENIXstudios\PC_DIMMER\unins000.exe"
  } else {
    $unpath = "${Env:ProgramFiles}\PHOENIXstudios\PC_DIMMER\unins000.exe"
  }
  Uninstall-ChocolateyPackage 'PCDIMMER' 'EXE' '/verysilent' "$unpath" -validExitCodes @(0)
  
  # the following is all part of error handling
  Write-ChocolateySuccess 'PCDIMMER'
} catch {
  Write-ChocolateyFailure 'PCDIMMER' "$($_.Exception.Message)"
  throw
}