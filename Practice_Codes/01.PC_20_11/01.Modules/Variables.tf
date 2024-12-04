variable "tusharRGvarsM" {
  type = map(object({
    name     = string
    location = string
  }))
}

variable "tusharstoragevarsM" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
  }))
}

variable "tusharContainervarsM" {
  type = map(object({
    name                 = string
    storage_account_name = string
    storage_account_id   = string
  }))
}

variable "tusharvnetvarsM" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    address_space       = list(string)
  }))
}

variable "tusharsubnetsvarM" {
  type = map(object({
    name                 = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
  }))
}

variable "tusharkeyvaultsvarsM" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    sku_name            = string
    tenant_id           = string
    object_id           = string
    value               = string
    key_vault_id        = string
  }))
}


variable "tusharvmvarsM" {
  type = map(object({
    name                            = string
    value                           = string
    key_vault_id                    = string
    keyvault_name                   = string
    resource_group_name             = string
    location                        = string
    size                            = string
    nic_name                        = string
    admin_username                  = string
    admin_password                  = string
    network_interface_ids           = list(string)
    disable_password_authentication = bool
  }))
}

variable "tusharnicvarsM" {
  type = map(object({
    name                          = string
    location                      = string
    resource_group_name           = string
    private_ip_address_allocation = string
    subnet_id                     = string
    ip_configuration_name         = string
    # public_ip_address_id          = optional(string)
    subnet_name = string
    # public_ip_name                = optional(string)
    # nsg_name = string
  }))
}

variable "tusharpublicipvarsM" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    allocation_method   = string
  }))
}


variable "tusharnsgvarsM" {
  type = map(object({
    name                                  = string
    location                              = string
    resource_group_name                   = string
    priority                              = number
    direction                             = string
    access                                = string
    protocol                              = any
    source_port_ranges                    = any
    destination_port_ranges               = any
    rule_name                             = string
    source_address_prefixes               = optional(any)
    destination_address_prefixes          = optional(any)
    source_application_security_group_ids = optional(any)

  }))
}

variable "tusharbastionhostsvarsM" {
  type = map(object({
    name                  = string
    resource_group_name   = string
    location              = string
    subnet_id             = string
    public_ip_address_id  = string
    subnet_name           = string
    public_ip_name        = string
    ipconfig_bastion_name = string
    virtual_network_name  = string
  }))
}