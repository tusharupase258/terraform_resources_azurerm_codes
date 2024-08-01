variable "rg_set" {
  description = "List of resource groups"
  type        = string
  default     =  "rgg1"
}

variable "location_set" {
  description = "list of location"
  type        = string
  default     = "West us"
}

resource "azurerm_resource_group" "rgg1" {
  name     = var.rg_set
  location = var.location_set
}