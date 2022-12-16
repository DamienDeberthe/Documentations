# Resource group
output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

# Linux virtual machine
output "linux_virtual_machine_name" {
  value = azurerm_linux_virtual_machine.my_terraform_vm.name
}

output "linux_virtual_machine_size" {
  value = azurerm_linux_virtual_machine.my_terraform_vm.size
}

# Public IP
output "public_ip_address" {
  value = azurerm_linux_virtual_machine.my_terraform_vm.public_ip_address
}

output "private_ip_address" {
  value = azurerm_linux_virtual_machine.my_terraform_vm.private_ip_address
}