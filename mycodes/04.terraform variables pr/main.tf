resource "azurerm_resource_group" "rg1" {
  for_each = var.rg_set
  name = each.key
  location = var.location_set
}