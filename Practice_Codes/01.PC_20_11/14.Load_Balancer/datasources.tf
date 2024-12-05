data "azurerm_public_ip" "tusharpublicipdatalb" {
    for_each = var.tusharpublicipvars
    name = each.value.name
    resource_group_name = each.value.resource_group_name
}

data "azurerm_virtual_machine" "tushar_vm_data_lb" {
    for_each = var.tusharlb_VMs_backendvars
    name = each.value.name
    resource_group_name = each.value.resource_group_name
}

data "azurerm_virtual_network" "tushar_vnetdata_lb" {
    for_each = var.tusharvnet_lbvars
    name = each.value.name
    resource_group_name = each.value.resource_group_name
}