# resource "azurerm_network_security_group" "tusharnsgs" {
#   for_each = var.tusharnsgvars
#   name = each.value.name
#   location = each.value.location
#   resource_group_name = each.value.resource_group_name
#   security_rule {
#     name = each.value.rule_name
#     priority = each.value.priority
#     direction = each.value.direction
#     access = each.value.access
#     protocol = each.value.protocol
#     source_port_ranges = toset([each.value.source_port_ranges])
#     destination_port_ranges =toset([each.value.destination_port_ranges])
#     source_address_prefixes = toset([each.value.source_address_prefixes])
#     destination_address_prefixes = toset([each.value.destination_address_prefixes])
#     source_application_security_group_ids = each.value.source_application_security_group_ids
#   }
# }