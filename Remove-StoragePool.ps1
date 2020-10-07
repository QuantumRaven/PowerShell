###########################################################################################
# Original Author: Chloe Carpenter
#
# Role of script: Removes Windows Storage Pool and Windows Virtual Disks
#
# License: Unlicense - https://unlicense.org/
###########################################################################################

Remove-VirtualDisk -FriendlyName VM_Storage

Remove-VirtualDisk -FriendlyName VM_Data

Remove-VirtualDisk -FriendlyName Apps

Remove-StoragePool -FriendlyName LoC