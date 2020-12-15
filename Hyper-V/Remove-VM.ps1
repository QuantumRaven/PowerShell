########################################################################################################
# Original Author: Chloe Carpenter
#
# Role of script: Removes the specified virtual machine and deletes all data and the associated VHDX file tied to it
#
# License: Unlicense - https://unlicense.org/
#########################################################################################################

$VMName = Read-Host -Prompt "VMName"

$VHDXFile = "F:\$VMName\$VMName.vhdx"

$VHDXFolder = "F:\$VMName"

$VMData = "L:\$VMName"

Remove-VM -VMName $VMName

Remove-Item -Path $VHDXFile

Remove-Item -Path $VHDXFolder

Remove-Item -Path $VMData