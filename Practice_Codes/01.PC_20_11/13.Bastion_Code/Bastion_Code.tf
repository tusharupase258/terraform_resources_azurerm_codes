resource "azurerm_bastion_host" "tusharbastionhosts" {
  for_each = var.tusharbastionhostsvars
  name = each.value.name
  resource_group_name = each.value.resource_group_name
  location = each.value.location
  ip_configuration {
    name = each.value.ipconfig_bastion_name
    subnet_id = data.azurerm_subnet.tusharbastionsubnetdata[each.key].id
    public_ip_address_id = data.azurerm_public_ip.tusharpublicipdatabastion[each.key].id
  }
}