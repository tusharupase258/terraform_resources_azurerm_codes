data "azurerm_key_vault" "tusharkeyvaultdata" {
    for_each = var.tusharkeyvaultsvars
    name = each.value.name
    resource_group_name = each.value.resource_group_name
}

data "azurerm_key_vault_secret" "tusharsecretdata" {
    for_each = var.tusharvmvars
    name = "${each.value.name}-secretpass"
    key_vault_id = data.azurerm_key_vault.tusharkeyvaultdata[each.value.keyvault_name].id
}

data "azurerm_network_interface" "tusharnicdata" {
    for_each = var.tusharnicvars
    name = each.value.name
    resource_group_name = each.value.resource_group_name
}