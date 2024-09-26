data "azurerm_public_ip" "tusharpubliciplbdata" {
  name = "tusharpubliciplb"
  resource_group_name = "tusharRG1"
}

# data "azurerm_network_interface" "tusharnicdatalb" {
#   for_each = var.tusharnicsvar
#   name = each.value.name
#   resource_group_name = each.value.resource_group_name
# }

data "azurerm_virtual_network" "tusharlbvnetdata" {
  name = "tusharvnet1"
  resource_group_name = "tusharRG1"
}

data "azurerm_virtual_machine" "tusharvmdatalb" {
  for_each = var.tusharprivateiplb
  name = each.value.name
  resource_group_name = each.value.resource_group_name
}