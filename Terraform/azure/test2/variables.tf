# Resource group
variable "resource_group_location" {
  default     = "West Europe"
  description = "Location of the resource group."
}

variable "resource_group_name" {
  default     = "rg_test2"
  description = "Ressource group name."
}

# Virtual network
variable "virtual_network_name" {
  default     = "vn_test2"
  description = "Virtual network name."
}

variable "virtual_network_address_space" {
  default     = ["192.168.0.0/16"]
  description = "Virtual network address space."
}

# Subnet
variable "subnet_name" {
  default     = "subnet_test2"
  description = "Subnet name."
}

variable "subnet_address_prefixes" {
  default     = ["192.168.1.0/24"]
  description = "Subnet address prefixes."
}

# VM
variable "linux_virtual_machine_name" {
  default     = "VM_test2"
  description = "Linux virtual machine name."
}

variable "linux_virtual_machine_size"{
  default     = {
    "B1s"  = "Standard_B1s"
    "B1ls" = "Standard_B1ls"
  }
  description = "Linux virtual machine size."  
}

variable "linux_virual_machine_computer_name" {
  default     = "test2"
  description = "Linux virtual machine computer name."  
}
