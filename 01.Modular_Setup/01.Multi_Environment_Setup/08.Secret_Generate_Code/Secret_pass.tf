resource "random_password" "tusharpassgenerate" {
    for_each = var.tusharvmvars
  length = 16
  special = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
  # lifecycle {
  #   prevent_destroy = true
  # }
}


resource "azurerm_key_vault_secret" "tusharsecret" {
    for_each = var.tusharvmvars
    name = "${each.value.name}-secretpass"
    value = random_password.tusharpassgenerate[each.key].result
    key_vault_id = data.azurerm_key_vault.tusharkeyvaultdata[each.value.keyvault_name].id
    # lifecycle {
    #   prevent_destroy = true
    # }
}