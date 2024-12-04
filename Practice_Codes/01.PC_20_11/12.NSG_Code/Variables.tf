# variable "tusharnsgvars" {
#   type = map(object({
#     name = string
#     location = string
#     resource_group_name = string
#     priority = number
#     direction = string
#     access = string
#     protocol = any
#     source_port_ranges = any
#     destination_port_ranges = any
#     rule_name = string
#     source_address_prefixes = optional(any)
#     destination_address_prefixes = optional(any)
#     source_application_security_group_ids = optional(any)
#   }))
# }