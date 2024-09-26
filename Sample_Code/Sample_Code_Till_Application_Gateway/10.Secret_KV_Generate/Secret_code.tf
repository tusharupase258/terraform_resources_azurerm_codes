resource "random_password" "tusharrandompass" {
    for_each = var.tusharkvsecretsvar
  length = 16
  special = true
  override_special = "@@?!"
}

resource "azurerm_key_vault_secret" "tusharkvsecrets" {
  for_each = var.tusharkvsecretsvar
  name = "${each.value.name}-password"
  value = random_password.tusharrandompass[each.key].result
  key_vault_id = data.azurerm_key_vault.tusharkvdata[each.value.keyvault_name].id
}