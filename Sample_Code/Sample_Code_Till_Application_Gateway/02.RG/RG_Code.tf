resource "azurerm_resource_group" "tusharRGs" {
  for_each = var.tusharRGsvars
  name = each.value.name
  location = each.value.location
}