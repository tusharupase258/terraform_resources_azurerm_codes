variable "tusharwindowsvmssvars" {
  type = map(object({
    name = string
    resource_group_name = string
    location = string
    sku = string
    instances = number
    admin_username = string
    admin_password = string
    nic_name = string
    primary = bool
    ip_configuration_name = string
    subnet_id = string
    subnet_name = string
  }))
}

variable "tusharsubnetvars" {
  type = map(object({
    name = string
    resource_group_name = string
    virtual_network_name = string
  }))
}