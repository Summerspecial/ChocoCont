try {
  $processor = Get-WmiObject Win32_Processor
  $is64bit = $processor.AddressWidth -eq 64
  if ($is64bit) {
    $unpath = "${Env:ProgramFiles(x86)}\BetterPoEditor\unins000.exe"
  } else {
    $unpath = "${Env:ProgramFiles}\BetterPoEditor\unins000.exe"
  }
  Uninstall-ChocolateyPackage 'BetterPoEditor' 'EXE' '/verysilent /norestart' "$unpath" -validExitCodes @(0)
  
  # the following is all part of error handling
  Write-ChocolateySuccess 'BetterPoEditor'
} catch {
  Write-ChocolateyFailure 'BetterPoEditor' "$($_.Exception.Message)"
  throw
}