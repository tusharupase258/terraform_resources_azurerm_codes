variable "tusharvmvars" {
  type = map(object({
    name = string
    value = string
    key_vault_id = string
    keyvault_name = string
  }))
}

variable "tusharkeyvaultsvars" {
  type = map(object({
    name = string
    resource_group_name = string
    value = string
    key_vault_id = string
  }))
}