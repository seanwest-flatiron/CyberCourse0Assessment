# Get the total physical memory installed on the machine in bytes
$totalMemoryBytes = (Get-CimInstance -ClassName Win32_ComputerSystem).TotalPhysicalMemory

# Convert bytes to gigabytes with rounding
$totalMemoryGB = [Math]::Round($totalMemoryBytes / 1GB)

# Check if the memory is not 5GB
if ($totalMemoryGB -ne 5) {
    Write-Host "The current amount of RAM is $totalMemoryGB GB."
    Write-Host "For this flag you need to set the RAM of this machine to 5GB."
    Write-Host "Flag not retrieved."
} else {
    Write-Host "The amount of memory on the virtual machine is properly set to 5GB."
    Write-Host "The flag is MEMORYHOG."
}
