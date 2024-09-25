data "azurerm_network_interface" "tusharnicdatavm" {
    for_each = var.tusharnicsvar
    name = each.value.name
    resource_group_name = each.value.resource_group_name
}

data "azurerm_key_vault" "tusharkvdatavm" {
  for_each = var.tusharkeysvars
  name = each.value.name
  resource_group_name = each.value.resource_group_name
}

data "azurerm_key_vault_secret" "tusharsecretdatavm" {
  for_each = var.tusharkvsecretsvar
  name = "${each.value.name}-password"
  key_vault_id = data.azurerm_key_vault.tusharkvdatavm[each.value.keyvault_name].id
}