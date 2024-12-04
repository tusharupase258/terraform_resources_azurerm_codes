variable "tusharvmvars" {
  type = map(object({
    name = string
    resource_group_name = string
    location = string
    size = string
    admin_username = string
    admin_password = string
    disable_password_authentication = bool
    network_interface_ids = list(string)
    key_vault_id = string
    keyvault_name = string
    nic_name = string
  }))
}

variable "tusharkeyvaultsvars" {
  type = map(object({
    name = string
    resource_group_name = string
  }))
}

variable "tusharnicvars" {
  type = map(object({
    name = string
    resource_group_name = string
  }))
}
