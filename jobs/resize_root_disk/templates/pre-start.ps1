Set-PSDebug -trace 1            # "set -x"
Set-PSDebug -strict             # "set -u"
$ErrorActionPreference = "Stop" # "set -e"

# avoid overly narrow default linewrap
$term = (get-host).ui.rawui
$size = $term.buffersize
$size.width = 128
$term.buffersize = $size
$size = $term.windowsize
$size.width = 128
$term.windowsize = $size

Set-ExecutionPolicy Bypass -Scope Process -Force

$MaxSize = (Get-PartitionSupportedSize -DriveLetter c).sizeMax
Resize-Partition -DriveLetter c -Size $MaxSize
