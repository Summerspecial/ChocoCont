try {
  $processor = Get-WmiObject Win32_Processor
  $is64bit = $processor.AddressWidth -eq 64
  if ($is64bit) {
    $unpath = "c:\QS\UNINSTAL.EXE"
  } else {
    $unpath = "c:\QS\UNINSTAL.EXE"
  }
  Uninstall-ChocolateyPackage 'PangolinQuickshow' 'EXE' '/S /R' "$unpath" -validExitCodes @(0)
  
  # the following is all part of error handling
  Write-ChocolateySuccess PangolinQuickshow'
} catch {
  Write-ChocolateyFailure 'PangolinQuickshow' "$($_.Exception.Message)"
  throw
}