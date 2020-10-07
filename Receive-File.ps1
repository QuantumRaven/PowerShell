###########################################################################################
# Original Author: Chloe Carpenter
#
# Role of script: This script downloads files from the internet, based on the URL
# the user adds
#
# License: Unlicense - https://unlicense.org/
###########################################################################################

$url = Read-Host -Prompt "Download Source URL"

Write-Host "G:\InstallerFiles" `n`n

$output = Read-Host -Prompt "Save file to"

$wc = New-Object System.Net.WebClient

$wc.DownloadFile($url, $output)