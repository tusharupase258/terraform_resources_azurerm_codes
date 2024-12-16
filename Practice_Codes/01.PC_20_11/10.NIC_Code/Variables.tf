variable "tusharsubnetvars" {
  type = map (object({
    name = string
    resource_group_name = string
    virtual_network_name = string
  }))
}

variable "tusharnicvars" {
  type = map (object({
    name = string
    location = string
    resource_group_name = string
    private_ip_address_allocation = string
    subnet_id = string
    #public_ip_address_id = optional(string)
    subnet_name = string
    ip_configuration_name = string
    #public_ip_name = optional(string)
    # nsg_name = optional(string)
  }) )
}

variable "tusharpublicipvars" {
type = map(object({
  name = string
  resource_group_name = string
}))
}

variable "tusharnsgvars" {
  type = map(object({
    name = string
    resource_group_name = string
  }))
}