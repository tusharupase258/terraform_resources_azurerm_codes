resource "azurerm_storage_container" "tusharContainerstg" {
    for_each = var.tusharContainervars
    name = each.value.name
    container_access_type = "private"
    storage_account_id = data.azurerm_storage_account.tusharstorage_data[each.value.storage_account_name].id
    }