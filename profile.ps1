
$profileDir = $PSScriptRoot;

foreach ( $includeFile in ("azure", "defaults", "openssl", "dev", "windows") ) {
    Unblock-File $profileDir\$includeFile.ps1
. "$profileDir\$includeFile.ps1"
}