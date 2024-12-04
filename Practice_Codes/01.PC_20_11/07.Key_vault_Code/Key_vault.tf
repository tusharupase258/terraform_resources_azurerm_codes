resource "azurerm_key_vault" "tusharkeyvaults" {
  for_each = var.tusharkeyvaultsvars
  name = each.value.name
  location = each.value.location
  resource_group_name = each.value.resource_group_name
  tenant_id = data.azurerm_client_config.tusharclientconfig_data.tenant_id
  sku_name = each.value.sku_name
  access_policy {
    tenant_id = data.azurerm_client_config.tusharclientconfig_data.tenant_id
    object_id = data.azurerm_client_config.tusharclientconfig_data.object_id
    key_permissions = [
        "Get",
    ]
    secret_permissions = [
      "Get", "Backup", "Delete", "List", "Purge", "Recover", "Restore", "Set"
    ]
    storage_permissions = [
      "Get",
    ]
  }
}