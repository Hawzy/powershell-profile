
$profileDir = $PSScriptRoot;

foreach ( $includeFile in ("azure", "defaults", "openssl", "dev", "windows") ) {
    Unblock-File $profileDir\$includeFile.ps1
. "$profileDir\$includeFile.ps1"
}

set-poshprompt night-owl

Set-PSReadLineOption -PredictionSource History