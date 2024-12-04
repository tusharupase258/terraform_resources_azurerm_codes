data "azurerm_subnet" "tusharsubnetdata" {
  for_each = var.tusharsubnetvars
  name = each.value.name
  resource_group_name = each.value.resource_group_name
  virtual_network_name = each.value.virtual_network_name
}

data "azurerm_public_ip" "tusharpublicipvars" {
  for_each = var.tusharpublicipvars
  name = each.value.name
  resource_group_name = each.value.resource_group_name
}

# data "azurerm_network_security_group" "tusharnsgdata" {
#   for_each = var.tusharnsgvars
#   name = each.value.name
#   resource_group_name = each.value.resource_group_name
# }
