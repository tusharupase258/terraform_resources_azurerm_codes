data "azurerm_subnet" "tusharbastionsubnetdata" {
  for_each = var.tusharbastionhostsvars
  name = each.value.subnet_name
  resource_group_name = each.value.resource_group_name
  virtual_network_name = each.value.virtual_network_name
}


data "azurerm_public_ip" "tusharpublicipdatabastion" {
    for_each = var.tusharbastionhostsvars
    name = each.value.public_ip_name
    resource_group_name = each.value.resource_group_name
}