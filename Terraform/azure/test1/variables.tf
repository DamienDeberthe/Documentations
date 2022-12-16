# Resource group
variable "resource_group_location" {
  default     = "West Europe" # West is Amsterdam
  description = "Location of the resource group."
}

variable "resource_group_name" {
  default     = "rg_test1"
  description = "Resource group name."
}
