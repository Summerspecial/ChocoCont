$packageName = 'BetterPoEditor'
$installerType = 'EXE'
$url = 'https://github.com/mlocati/betterpoeditor/releases/download/v1.2.0/bepoe_setup_1.2.0.exe'
$url64 = $url
$silentArgs = '/verysilent /norestart'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" "$url64"  -validExitCodes $validExitCodes
