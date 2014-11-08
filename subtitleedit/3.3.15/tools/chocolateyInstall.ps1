#Install-ChocolateyPackage 'subtitleedit' 'exe' '/verysilent' 'https://subtitleedit.googlecode.com/files/SubtitleEdit-3.3.15-Setup.zip'
try {
    $url = 'https://github.com/SubtitleEdit/subtitleedit/releases/download/3.3.15/SubtitleEdit-3.3.15-Setup.zip'
    $installer = 'SubtitleEdit-3.3.15-Setup.exe'
    $tempDir = Join-Path $env:TEMP 'chocolatey'
    $tempDir = Join-Path $tempDir 'subtitleedit'
    Install-ChocolateyZipPackage 'subtitleedit' "$url" "$tempDir"
    $file = Join-Path $tempDir "$installer"
    Install-ChocolateyInstallPackage 'subtitleedit' 'exe' '/VERYSILENT' "$file"
    Write-ChocolateySuccess 'subtitleedit'
} catch {
    Write-ChocolateyFailure 'subtitleedit' "$($_.Exception.Message)"
    throw 
}