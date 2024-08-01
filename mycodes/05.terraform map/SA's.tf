resource "azurerm_storage_account" "tusharstg1" {
    depends_on = [ azurerm_resource_group.tusharrg1 ]
    for_each = var.stg_set
    name = each.value.name
    resource_group_name = each.value.resource_group_name
    location = each.value.location
    account_tier = each.value.account_tier
    account_replication_type = each.value.account_replication_type
}