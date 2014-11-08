try {
  $processor = Get-WmiObject Win32_Processor
  $is64bit = $processor.AddressWidth -eq 64
  if ($is64bit) {
    $unpath = "${Env:ProgramFiles(x86)}\Amaya\Uninstall.exe"
  } else {
    $unpath = "${Env:ProgramFiles}\Amaya\Uninstall.exe"
  }
  Uninstall-ChocolateyPackage 'Amaya' 'EXE' '/S' "$unpath" -validExitCodes @(0)
  
  # the following is all part of error handling
  Write-ChocolateySuccess 'Amaya'
} catch {
  Write-ChocolateyFailure 'Amaya' "$($_.Exception.Message)"
  throw
}