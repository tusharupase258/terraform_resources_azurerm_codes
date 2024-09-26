resource "azurerm_subnet" "tusharSubnets" {
    for_each = var.tusharSubnetsvars
    name = each.value.name
    virtual_network_name = each.value.virtual_network_name
    resource_group_name = each.value.resource_group_name
    address_prefixes = each.value.address_prefixes
}