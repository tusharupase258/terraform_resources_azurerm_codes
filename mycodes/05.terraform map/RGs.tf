resource "azurerm_resource_group" "tusharrg1" {
  for_each = var.rg_set
  name     = each.value.name
  location = each.value.location
}