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
    # nsg_name = optional(string)
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

variable "tusharlbvarsM" {
  type = map(object({
    name                 = string
    location             = string
    resource_group_name  = string
    publicip_name        = string
    public_ip_address_id = string
  }))
}

variable "tusharlb_backendpool_varM" {
  type = map(object({
    name            = string
    loadbalancer_id = string
    lb_name         = string
  }))
}

variable "tusharlb_backendpool_addressvarsM" {
  type = map(object({
    name                    = string
    backend_address_pool_id = string
    ip_address              = string
    virtual_network_id      = string
    backendpool_name        = string
    vm_name                 = string
    virtual_network_name    = string
  }))
}

variable "tusharlb_VMs_backendvarsM" {
  type = map(object({
    name                = string
    resource_group_name = string
  }))
}

variable "tusharvnet_lbvarsM" {
  type = map(object({
    name                = string
    resource_group_name = string
  }))
}

variable "tusharlb_healthprobevarsM" {
  type = map(object({
    name                = string
    port                = number
    protocol            = string
    loadbalancer_id     = string
    number_of_probes    = optional(number)
    request_path        = optional(string)
    interval_in_seconds = optional(number)
    lb_name             = string
  }))
}

variable "tusharlb_rulevarsM" {
  type = map(object({
    name                           = string
    frontend_ip_configuration_name = string
    backend_port                   = number
    frontend_port                  = number
    protocol                       = string
    probe_id                       = string
    enable_tcp_reset               = optional(bool, false)
    enable_floating_ip             = optional(bool, false)
    load_distribution              = optional(string, "Default")
    idle_timeout_in_minutes        = optional(number, 4)
    backend_address_pool_ids       = list(string)
    lb_name                        = string
    loadbalancer_id                = string
    probe_name                     = string
    backendpool_name               = string
  }))
}


variable "tusharlinuxvmssvarsM" {
  type = map(object({
    name                            = string
    resource_group_name             = string
    location                        = string
    admin_password                  = string
    admin_username                  = string
    disable_password_authentication = bool
    sku                             = string
    nic_name                        = string
    primary                         = bool
    ip_configuration_name           = string
    subnet_id                       = string
    instances                       = number
    subnet_name                     = string
  }))
}

variable "tusharwindowsvmvarM" {
  type = map(object({
    name                  = string
    resource_group_name   = string
    location              = string
    size                  = string
    admin_password        = string
    admin_username        = string
    network_interface_ids = list(string)
    nic_name              = string
  }))
}

variable "tusharwindowsvmssvarsM" {
  type = map(object({
    name                  = string
    resource_group_name   = string
    location              = string
    sku                   = string
    instances             = number
    admin_username        = string
    admin_password        = string
    nic_name              = string
    primary               = bool
    ip_configuration_name = string
    subnet_id             = string
    subnet_name           = string
  }))
}