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

New-StoragePool -FriendlyName "library_of_chloe" -StorageSubSystemFriendlyName "Windows Storage*" -PhysicalDisks $physical_disk -ProvisioningTypeDefault Thin

# Create new virtual disks

New-VirtualDisk -StoragePoolFriendlyName "library_of_chloe" -FriendlyName "VM_Storage" -ProvisioningType Thin -ResiliencySettingName Simple -Size 1.5TB | Initialize-Disk -PassThru | New-Partition -AssignDriveLetter -UseMaximumSize | Format-Volume -NewFileSystemLabel "VM_Storage"

New-VirtualDisk -StoragePoolFriendlyName "library_of_chloe" -FriendlyName "VM_Data" -ProvisioningType Thin -ResiliencySettingName Simple -Size 1.5TB | Initialize-Disk -PassThru | New-Partition -AssignDriveLetter -UseMaximumSize | Format-Volume -NewFileSystemLabel "VM_Data"

New-VirtualDisk -StoragePoolFriendlyName "library_of_chloe" -FriendlyName "Apps" -ProvisioningType Thin -ResiliencySettingName Simple -Size 1TB | Initialize-Disk -PassThru | New-Partition -AssignDriveLetter -UseMaximumSize | Format-Volume -NewFileSystemLabel "Apps"