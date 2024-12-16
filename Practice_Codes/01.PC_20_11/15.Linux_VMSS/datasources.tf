data "azurerm_subnet" "tusharsubnetdatalinuxvmss" {
  for_each = var.tusharsubnetvars
  name = each.value.name
  resource_group_name = each.value.resource_group_name
  virtual_network_name = each.value.virtual_network_name
}