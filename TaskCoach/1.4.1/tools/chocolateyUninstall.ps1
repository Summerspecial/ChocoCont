try {
  $processor = Get-WmiObject Win32_Processor
  $is64bit = $processor.AddressWidth -eq 64
  if ($is64bit) {
    $unpath = "${Env:ProgramFiles(x86)}\TaskCoach\unins000.exe"
  } else {
    $unpath = "${Env:ProgramFiles}\TaskCoach\unins000.exe"
  }
  Uninstall-ChocolateyPackage 'TaskCoach' 'EXE' '/VERYSILENT' "$unpath" -validExitCodes @(0)
  
  # the following is all part of error handling
  Write-ChocolateySuccess 'TaskCoach'
} catch {
  Write-ChocolateyFailure 'TaskCoach' "$($_.Exception.Message)"
  throw
}