resource "azurerm_subnet" "tusharsubnets" {
  for_each = var.tusharsubnetsvars
  name = each.value.name
  resource_group_name = each.value.resource_group_name
  address_prefixes = each.value.address_prefixes
  virtual_network_name = each.value.virtual_network_name
}