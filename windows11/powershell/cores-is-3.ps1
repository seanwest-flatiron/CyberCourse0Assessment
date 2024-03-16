# Get the number of physical cores
$physicalCores = (Get-CimInstance -ClassName Win32_Processor).NumberOfCores

# Check if the number of physical cores is exactly 3
if ($physicalCores -eq 3) {
    Write-Host "You properly set the virtual machine's cores to 3."
    Write-Host "The flag is KANSAS."
} else {
    Write-Host "This machine currently has $physicalCores physical core(s)."
    Write-Host "In order to get this flag, you need to run this in a Virtual Machine with 3 cores."
    Write-Host "Flag not retrieved."
}
