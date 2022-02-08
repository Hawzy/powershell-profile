function get-windows-build {
	Get-CimInstance -Class Win32_OperatingSystem
}
function get-path {
	($Env:Path).Split(";")
}
function get-serial-number {
    Get-CimInstance -ClassName Win32_Bios | select-object serialnumber
  }

function edge {
    & "${env:ProgramFiles(x86)}\Microsoft\Edge\Application\msedge.exe"
  }

function get-free-space {
    Get-CimInstance -Class Win32_LogicalDisk |
Select-Object -Property Name, @{
    label='FreeSpace'
    expression={($_.FreeSpace/1GB).ToString('F2')}
  }
}