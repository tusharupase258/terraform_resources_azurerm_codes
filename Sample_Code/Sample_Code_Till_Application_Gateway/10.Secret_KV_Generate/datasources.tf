data "azurerm_key_vault" "tusharkvdata" {
  for_each = var.tusharkeysvars
  name = each.value.name
  resource_group_name = each.value.resource_group_name
}