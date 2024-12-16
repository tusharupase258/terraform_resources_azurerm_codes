variable "tusharlinuxvmssvars" {
  type = map(object({
    name = string
    resource_group_name = string
    location = string
    admin_password = string
    admin_username = string
    disable_password_authentication = bool
    sku = string
    nic_name = string
    primary = bool
    ip_configuration_name = string
    subnet_id = string
    subnet_name = string
    instances = number
    }))
}

variable "tusharsubnetvars" {
  type = map(object({
    name = string
    resource_group_name = string
    virtual_network_name = string
  }))
}