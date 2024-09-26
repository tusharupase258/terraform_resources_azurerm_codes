data "azurerm_public_ip" "pubicipdatanic" {
  for_each = var.tusharpublicipsvars
  name = each.value.name
  resource_group_name = each.value.resource_group_name
}

data "azurerm_subnet" "subnetdatanic" {
  for_each = var.tusharSubnetsvars
  name = each.value.name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name = each.value.resource_group_name
}