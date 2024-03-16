# Define the path to the SECRET folder in the user's home directory
$secretFolderPath = Join-Path -Path $HOME -ChildPath "Prework-Assessment"

# Create the SECRET folder if it doesn't already exist
if (-not (Test-Path -Path $secretFolderPath)) {
    New-Item -ItemType Directory -Path $secretFolderPath | Out-Null
}

# Define the path to the flag file within the SECRET folder
$flagFilePath = Join-Path -Path $secretFolderPath -ChildPath "flag.txt"

# Create the flag file with the specified content
$content = "The flag is MARIO"
Set-Content -Path $flagFilePath -Value $content

# Instruct the user where to find the flag
Write-Host "The flag is in a text file in the folder $secretFolderPath."
Write-Host "Open that file in order to retrieve the flag."
