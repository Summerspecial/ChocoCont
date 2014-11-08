try {
  $processor = Get-WmiObject Win32_Processor
  $is64bit = $processor.AddressWidth -eq 64
  if ($is64bit) {
    $unpath = "${Env:ProgramFiles(x86)}\RocketDock\unins000.exe"
  } else {
    $unpath = "${Env:ProgramFiles}\RocketDock\unins000.exe"
  }
  Uninstall-ChocolateyPackage 'RocketDock' 'EXE' '/verysilent' "$unpath" -validExitCodes @(0)
  
  # the following is all part of error handling
  Write-ChocolateySuccess 'RocketDock'
} catch {
  Write-ChocolateyFailure 'RocketDock' "$($_.Exception.Message)"
  throw
}