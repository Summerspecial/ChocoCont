try {
  $processor = Get-WmiObject Win32_Processor
  $is64bit = $processor.AddressWidth -eq 64
  if ($is64bit) {
    $unpath = "${Env:ProgramFiles(x86)}\Handbrake\uninst.exe"
  } else {
    $unpath = "${Env:ProgramFiles}\Handbrake\uninst.exe"
  }
  Uninstall-ChocolateyPackage 'HandBrake' 'EXE' '/S' "$unpath" -validExitCodes @(0)
  
  # the following is all part of error handling
  Write-ChocolateySuccess 'HandBrake'
} catch {
  Write-ChocolateyFailure 'HandBrake' "$($_.Exception.Message)"
  throw
}