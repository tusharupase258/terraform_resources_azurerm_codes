resource "azurerm_key_vault" "tusharkeys" {
  for_each = var.tusharkeysvars
  name = each.value.name
  resource_group_name = each.value.resource_group_name
  location = each.value.location
  sku_name = each.value.sku_name
  tenant_id = data.azurerm_client_config.tenant_data.tenant_id

  access_policy {
    tenant_id = data.azurerm_client_config.tenant_data.tenant_id
    object_id = data.azurerm_client_config.tenant_data.object_id

    key_permissions = ["Get", "Backup", "Delete", "Get", "List", "Purge", "Recover", "Restore"]

    secret_permissions = ["Get", "Backup", "Delete", "Get", "List", "Purge", "Recover", "Restore", "Set"]

    certificate_permissions = ["Get", "Backup", "Delete", "Get", "List", "Purge", "Recover", "Restore",]

    storage_permissions = ["Get", "Backup", "Delete", "Get", "List", "Purge", "Recover", "Restore", "Set"]
  }
}