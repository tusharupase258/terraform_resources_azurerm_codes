resource "azurerm_network_interface" "tusharNics" {
    for_each = var.tusharnicsvar
    name = each.value.name
    resource_group_name = each.value.resource_group_name
    location = each.value.location

    ip_configuration {
      name = each.value.ip_configuration_name
      private_ip_address_allocation = each.value.private_ip_address_allocation
      # public_ip_address_id = data.azurerm_public_ip.pubicipdatanic[each.value.public_ip].id
      subnet_id = data.azurerm_subnet.subnetdatanic[each.value.subnet].id
    }
}