resource "azurerm_network_interface" "tusharnics" {
  for_each = var.tusharnicvars
  name = each.value.name
  location = each.value.location
  resource_group_name = each.value.resource_group_name
  ip_configuration {
    name = each.value.ip_configuration_name
    private_ip_address_allocation = "Dynamic"
    subnet_id = data.azurerm_subnet.tusharsubnetdata[each.value.subnet_name].id
    #public_ip_address_id = data.azurerm_public_ip.tusharpublicipvars[each.value.public_ip_name].id
  }
}

# resource "azurerm_network_interface_security_group_association" "tusharnicplusnsg" {
#   for_each = var.tusharnicvars
#   network_interface_id = azurerm_network_interface.tusharnics[each.key].id
#   network_security_group_id = data.azurerm_network_security_group.tusharnsgdata[each.value.nsg_name].id
# }