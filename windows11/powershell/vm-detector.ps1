$vmDetected = $false

# Check the computer system model and manufacturer
$systemInfo = Get-WmiObject Win32_ComputerSystem
$computerModel = $systemInfo.Model
$manufacturer = $systemInfo.Manufacturer

# Check BIOS information
$biosInfo = Get-WmiObject Win32_BIOS
$biosDescription = $biosInfo.Description

# Patterns to look for in the information that might indicate a VirtualBox VM
$vbPatterns = 'VirtualBox'

# Check if any of the patterns match
if ($computerModel -match $vbPatterns -or $manufacturer -match $vbPatterns -or $biosDescription -match $vbPatterns) {
    $vmDetected = $true
}

# Output the result
if ($vmDetected) {
    Write-Output "Virtual Machine detected. Great!"
    Write-Output "The flag is STONE"
} else {
    Write-Output "This script is not running in a VirtualBox VM."
    Write-Output "Flag not retrieved"
}
