
$profileDir = $PSScriptRoot;

foreach ( $includeFile in ("azure", "defaults", "openssl", "development") ) {
    Unblock-File $profileDir\$includeFile.ps1
. "$profileDir\$includeFile.ps1"
}