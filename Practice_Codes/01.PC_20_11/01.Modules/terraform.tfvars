tusharRGvarsM = {
  tusharRG1 = {
    name     = "tusharRG1"
    location = "France Central"
  }
}

tusharstoragevarsM = {
  tusharstorage193 = {
    name                = "tusharstorage193"
    location            = "France Central"
    resource_group_name = "tusharRG1"
  }
  tusharstorage194 = {
    name                = "tusharstorage194"
    location            = "France Central"
    resource_group_name = "tusharRG1"
  }
}

tusharContainervarsM = {
  tusharcontainer1 = {
    name                 = "tusharcontainer1"
    storage_account_id   = ""
    storage_account_name = "tusharstorage193"
  }
  tusharcontainer2 = {
    name                 = "tusharcontainer2"
    storage_account_id   = ""
    storage_account_name = "tusharstorage194"
  }
}

tusharvnetvarsM = {
  tusharvnet1 = {
    name                = "tusharvnet1"
    location            = "France Central"
    resource_group_name = "tusharRG1"
    address_space       = ["10.1.0.0/16"]
  }
}

tusharsubnetsvarM = {
  tusharsubnet1 = {
    name                 = "tusharsubnet1"
    resource_group_name  = "tusharRG1"
    virtual_network_name = "tusharvnet1"
    address_prefixes     = ["10.1.1.0/24"]
  }
  tusharsubnet2 = {
    name                 = "tusharsubnet2"
    resource_group_name  = "tusharRG1"
    virtual_network_name = "tusharvnet1"
    address_prefixes     = ["10.1.2.0/24"]
  }
  AzureBastionSubnet = {
    name                 = "AzureBastionSubnet"
    resource_group_name  = "tusharRG1"
    virtual_network_name = "tusharvnet1"
    address_prefixes     = ["10.1.3.0/24"]
  }
}

tusharkeyvaultsvarsM = {
  tusharkeyvault2 = {
    name                = "tusharkeyvault2"
    location            = "France Central"
    sku_name            = "standard"
    resource_group_name = "tusharRG1"
    tenant_id           = ""
    object_id           = ""
    value               = ""
    key_vault_id        = ""
  }
}

tusharvmvarsM = {
  tusharvm1 = {
    name                            = "tusharvm1"
    value                           = ""
    key_vault_id                    = ""
    resource_group_name             = "tusharRG1"
    location                        = "France Central"
    size                            = "Standard_F2"
    nic_name                        = "tusharnic1"
    admin_username                  = ""
    admin_password                  = ""
    disable_password_authentication = false
    network_interface_ids           = []
    keyvault_name                   = "tusharkeyvault2"
    nic_name                        = "tusharnic1"
  }
  tusharvm2 = {
    name                            = "tusharvm2"
    value                           = ""
    key_vault_id                    = ""
    keyvault_name                   = "tusharkeyvault2"
    resource_group_name             = "tusharRG1"
    location                        = "France Central"
    size                            = "Standard_F2"
    nic_name                        = "tusharnic2"
    admin_password                  = ""
    admin_username                  = ""
    disable_password_authentication = false
    network_interface_ids           = []
    nic_name                        = "tusharnic2"
  }
}

tusharnicvarsM = {
  tusharnic1 = {
    name                          = "tusharnic1"
    location                      = "France Central"
    resource_group_name           = "tusharRG1"
    ip_configuration_name         = "tusharnic1ip"
    private_ip_address_allocation = ""
    # public_ip_address_id          = ""
    subnet_id   = ""
    subnet_name = "tusharsubnet1"
    # public_ip_name                = "tusharpublicip1"
    nsg_name = "tusharnsgallowssh22"
  }
  tusharnic2 = {
    name                          = "tusharnic2"
    location                      = "France Central"
    resource_group_name           = "tusharRG1"
    ip_configuration_name         = "tusharnic2ip"
    private_ip_address_allocation = ""
    # public_ip_address_id          = ""
    subnet_id   = ""
    subnet_name = "tusharsubnet2"
    # public_ip_name                = "tusharpublicip2"
    nsg_name = "tusharnsgallowssh22"
  }
}

tusharpublicipvarsM = {
  #   tusharpublicip1 = {
  #     name                = "tusharpublicip1"
  #     location            = "France Central"
  #     resource_group_name = "tusharRG1"
  #     allocation_method   = ""
  #   }
  #   tusharpublicip2 = {
  #     name                = "tusharpublicip2"
  #     location            = "France Central"
  #     resource_group_name = "tusharRG1"
  #     allocation_method   = ""
  #   }
  tusharpublicipbastion = {
    name                = "tusharbastionpublicip"
    location            = "France Central"
    resource_group_name = "tusharRG1"
    allocation_method   = ""
  }
  tusharlbpublicip = {
    name                = "tusharlbpublicip"
    location            = "France Central"
    resource_group_name = "tusharRG1"
    allocation_method   = ""
  }
}

tusharnsgvarsM = {
  tusharnsgallowssh22 = {
    name                         = "tusharnsgallowssh22"
    location                     = "France Central"
    resource_group_name          = "tusharRG1"
    rule_name                    = "allowsshvm"
    priority                     = 101
    direction                    = "Inbound"
    access                       = "Allow"
    protocol                     = "*"
    source_port_ranges           = "0-65535"
    destination_port_ranges      = "22"
    source_address_prefixes      = "0.0.0.0/0"
    destination_address_prefixes = "0.0.0.0/0"
  }
}

tusharbastionhostsvarsM = {
  tusharbastion1 = {
    name                  = "tusharbastion1"
    location              = "France Central"
    resource_group_name   = "tusharRG1"
    subnet_name           = "AzureBastionSubnet"
    public_ip_name        = "tusharbastionpublicip"
    virtual_network_name  = "tusharvnet1"
    ipconfig_bastion_name = "tusharbastionipconfig"
    public_ip_address_id  = ""
    subnet_id             = ""
  }
}

# tusharlbvarsM = {
#   tusharlb1 = {
#     name                           = "tusharlb1"
#     resource_group_name            = "tusharRG1"
#     location                       = "France Central"
#     frontend_ip_configuration_name = "tusharlbfront_configname"
#     public_ip_name                 = "tusharlbpublicip"
#     backend_pool_name              = "tusharbackend_pool_lb1"
#     backend_address_pool_id        = ""
#     ip_address                     = ""
#     loadbalancer_id                = ""
#     public_ip_address_id           = ""
#     nic_name                       = "tusharnic1"
#     vnet_name                      = "tusharvnet1"
#     virtual_network_id             = ""
#   }
# }

# tusharlbvarsM = {
#   tusharlb1 = {
#     name                = "tusharlb1"
#     resource_group_name = "tusharRG1"
#     location            = "France Central"
#   }
# }

# tusharlbfrontipconfigvarsM = {
#   tusharfrontend_ipconfiglb1 = {
#     name                 = "tusharfrontend_ipconfiglb1"
#     public_ip_address_id = ""
#     public_ip_name       = "tusharlbpublicip"
#   }
# }

# tushar_lb_backend_address_poolvarsM = {
#   tusharbackend_pool_lb1 = {
#     name            = "tusharbackend_pool_lb1"
#     loadbalancer_id = ""
#     lb_name         = "tusharlb1"
#   }
# }