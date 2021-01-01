###########################################################################################
# Original Author: Chloe Carpenter
#
# Role of script: Create new Windows Storage Pool
#
# License: Unlicense - https://unlicense.org/
###########################################################################################

# Acquire physical storage that can be pooled together

$physical_disk = (Get-PhysicalDisk -CanPool $True)

# Create a new Storage Pool

New-StoragePool -FriendlyName (Read-Host -Prompt "Friendly Name") -StorageSubSystemFriendlyName "Windows Storage*" -PhysicalDisks $physical_disk -ProvisioningTypeDefault Thin
