try {
  $processor = Get-WmiObject Win32_Processor
  $is64bit = $processor.AddressWidth -eq 64
  if ($is64bit) {
    $unpath = "${Env:ProgramFiles(x86)}\Areca\uninstall.exe"
  } else {
    $unpath = "${Env:ProgramFiles}\Areca\uninstall.exe"
  }
  Uninstall-ChocolateyPackage 'ArecaBackup' 'EXE' '/S' "$unpath" -validExitCodes @(0)
  
  # the following is all part of error handling
  Write-ChocolateySuccess ArecaBackup'
} catch {
  Write-ChocolateyFailure 'ArecaBackup' "$($_.Exception.Message)"
  throw
}