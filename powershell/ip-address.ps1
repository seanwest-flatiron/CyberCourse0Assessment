# Ask the user for their IP address
$userIP = Read-Host "Please enter the IP address of your machine"

# Get the IPv4 address of the Ethernet adapter
$ethernetIP = Get-NetIPAddress -AddressFamily IPv4 | Where-Object { $_.InterfaceAlias -eq "Ethernet" } | Select-Object -ExpandProperty IPAddress

Write-Host "Ethernet adapter IP address: $ethernetIP"

# Compare the user-provided IP with the Ethernet adapter's IP
if ($userIP -eq $ethernetIP) {
    Write-Host "The flag is LUCKYCHARMS"
} else {
    Write-Host "Incorrect IP address."
}
