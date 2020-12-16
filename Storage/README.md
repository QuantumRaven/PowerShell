# New-StoragePool.ps1
## Role of script:
- Creates a new, custom storage pool

### Get-PhysicalDisk: What it is and how it works:
> The Get-PhysicalDisk cmdlet gets a list of all PhysicalDisk objects visible across any available Storage Management Providers, or optionally a filtered list of disks. [Get-PhysicalDisk - Storage - PowerShell](https://docs.microsoft.com/en-us/powershell/module/storage/Get-PhysicalDisk?view=win10-ps)

### New-StoragePool: What it is and how it works:
> The New-StoragePool cmdlet creates a new storage pool using a group of physical disks exposed by a specific storage subsystem. [New-StoragePool - Storage - PowerShell](https://docs.microsoft.com/en-us/powershell/module/storage/New-StoragePool?view=win10-ps)

# Remove-StoragePool.ps1
## Role of script:
- Removes Virtual Disks from storage pool and then removes the storage pool itself from existence

### Remove-VirtualDisk: What it is and how it works:
> The `Remove-VirtualDisk` cmdlet deletes an existing virtual disk and reclaims the used space for use by other virtual disks in the same StoragePool object. This action also deletes any associated file system located on the virtual disk. [Remove-VirtualDisk - Storage - PowerShell](https://docs.microsoft.com/en-us/powershell/module/storage/Remove-VirtualDisk?view=win10-ps)

### Remove-StoragePool: What it is and what it does:
> The `Remove-StoragePool` cmdlet deletes a storage pool. If the storage pool contains virtual disks, you must delete the virtual disks prior to removing the storage pool. [Remove-StoragePool - Storage - PowerShell](https://docs.microsoft.com/en-us/powershell/module/storage/Remove-StoragePool?view=win10-ps)