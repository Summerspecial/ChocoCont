try {
  $processor = Get-WmiObject Win32_Processor
  $is64bit = $processor.AddressWidth -eq 64
  if ($is64bit) {
    $unpath = "${Env:ProgramFiles(x86)}\Subtitle Edit\unins000.exe"
  } else {
    $unpath = "${Env:ProgramFiles}\Subtitle Edit\unins000.exe"
  }
  Uninstall-ChocolateyPackage 'subtitleedit' 'EXE' '/VERYSILENT' "$unpath" -validExitCodes @(0)
  
  # the following is all part of error handling
  Write-ChocolateySuccess 'subtitleedit'
} catch {
  Write-ChocolateyFailure 'subtitleedit' "$($_.Exception.Message)"
  throw
}