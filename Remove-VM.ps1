########################################################################################################
# Original Author: Chloe Carpenter
#
# Role of script: Removes the specified virtual machine and deletes all data and the associated VHDX file tied to it
#
# License: Unlicense - https://unlicense.org/
#########################################################################################################

$VMName = Read-Host -Prompt "VMName"

$VHDXFile = "E:\$VMName\$VMName.vhdx"

$VHDXFolder = "E:\$VMName"

$VMData = "F:\$VMName"

Remove-VM -VMName $VMName

Remove-Item -Path $VHDXFile

Remove-Item -Path $VHDXFolder

Remove-Item -Path $VMData