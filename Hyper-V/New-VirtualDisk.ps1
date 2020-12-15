###########################################################################################
# Original Author: Chloe Carpenter
#
# Role of script: Create new Virtual Disks for Storage Pool
###########################################################################################

##########
# Format
##########

#Requires -RunAsAdministrator

# New-VirtualDisk -StoragePoolFriendlyName "name_of_pool" -FriendlyName "Name of virtual disk displayed in the storage pool" -Size 100GB -ProvisioningType Fixed or Thin -ResiliencySettingName Simple, Mirror, or Parity | Initialize-Disk -PassThru | New-Partition -UseMaximumSize -AssignDriveLetter | Format-Volume -FileSystem NTFS -NewFileSystemLabel "VMData"

New-VirtualDisk -StoragePoolFriendlyName (Read-Host -Prompt "Name of Storage Pool") -FriendlyName (Read-Host -Prompt "Virtual Disk Name") -Size (Read-Host -Prompt "Size of disk") -ProvisioningType (Read-Host -Prompt "Fixed or Thin") -ResiliencySettingName (Read-Host -Prompt "Simple, Mirror, or Parity") | Initialize-Disk -PassThru | New-Partition -UseMaximumSize -AssignDriveLetter | Format-Volume -FileSystem (Read-Host -Prompt "NTFS or ReFS") -NewFileSystemLabel (Read-Host -Prompt "Name of Volume")