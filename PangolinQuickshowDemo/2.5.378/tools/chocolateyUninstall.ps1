try {
  $processor = Get-WmiObject Win32_Processor
  $is64bit = $processor.AddressWidth -eq 64
  if ($is64bit) {
    $unpath = "C:\QS\UNINSTAL.EXE"
  } else {
    $unpath = "C:\QS\UNINSTAL.EXE"
  }
  Uninstall-ChocolateyPackage 'PangolinQuickshowDemo' 'EXE' '/S /R' "$unpath" -validExitCodes @(0)
  
  # the following is all part of error handling
  Write-ChocolateySuccess PangolinQuickshowDemo'
} catch {
  Write-ChocolateyFailure 'PangolinQuickshowDemo' "$($_.Exception.Message)"
  throw
}