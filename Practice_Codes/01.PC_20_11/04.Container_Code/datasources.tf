data "azurerm_storage_account" "tusharstorage_data" {
  for_each            = var.tusharstoragevars
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
}