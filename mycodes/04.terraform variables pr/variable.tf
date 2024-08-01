variable "rg_set" {
  description = "List of resource groups"
  type        = set(string)
  default     = ["rg1", "rg5", "rg5", "rg1", "rg1", "rg1"]
}

variable "location_set" {
  description = "contains location"
  type = string
  default = "West us"
}