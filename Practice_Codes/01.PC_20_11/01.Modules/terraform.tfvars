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
  tusharsubnet3 = {
    name                 = "tusharsubnet3"
    resource_group_name  = "tusharRG1"
    virtual_network_name = "tusharvnet1"
    address_prefixes     = ["10.1.4.0/24"]
  }
  tusharwindowvmsubnet1 = {
    name                 = "tusharwindowvmsubnet1"
    resource_group_name  = "tusharRG1"
    virtual_network_name = "tusharvnet1"
    address_prefixes     = ["10.1.5.0/24"]
  }
  tusharsubnetwindowsvmss = {
    name                 = "tusharsubnetwindowsvmss"
    resource_group_name  = "tusharRG1"
    virtual_network_name = "tusharvnet1"
    address_prefixes     = ["10.1.6.0/24"]
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
    size                            = "Standard_F1"
    nic_name                        = "tusharnic1"
    admin_username                  = ""
    admin_password                  = ""
    disable_password_authentication = false
    network_interface_ids           = []
    keyvault_name                   = "tusharkeyvault2"
    nic_name                        = "tusharnic1"
  }
  # tusharvm2 = {
  #   name                            = "tusharvm2"
  #   value                           = ""
  #   key_vault_id                    = ""
  #   keyvault_name                   = "tusharkeyvault2"
  #   resource_group_name             = "tusharRG1"
  #   location                        = "France Central"
  #   size                            = "Standard_F1"
  #   nic_name                        = "tusharnic2"
  #   admin_password                  = ""
  #   admin_username                  = ""
  #   disable_password_authentication = false
  #   network_interface_ids           = []
  #   nic_name                        = "tusharnic2"
  # }
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
    # nsg_name = "tusharnsgallowssh22"
  }
  tusharlinuxvmssnic = {
    name                          = "tusharlinuxvmssnic"
    location                      = "France Central"
    resource_group_name           = "tusharRG1"
    ip_configuration_name         = "tusharlinuxvmssip_config"
    private_ip_address_allocation = ""
    subnet_id                     = ""
    subnet_name                   = "tusharsubnet3"
    # nsg_name                      = "tusharnsgallowssh22"
  }
  tusharwindowsvmnic1 = {
    name                          = "tusharwindowsvmnic1"
    location                      = "France Central"
    resource_group_name           = "tusharRG1"
    ip_configuration_name         = "tusharwindowsvm1ipconfig"
    private_ip_address_allocation = ""
    subnet_id                     = ""
    subnet_name                   = "tusharwindowvmsubnet1"
    # nsg_name                      = "tusharnsgallowssh22"
  }
  tusharwinvmssnic1 = {
    name                          = "tusharwinvmssnic1"
    location                      = "France Central"
    resource_group_name           = "tusharRG1"
    ip_configuration_name         = "tusharwinvmss1ipconfig"
    private_ip_address_allocation = ""
    subnet_id                     = ""
    subnet_name                   = "tusharsubnetwindowsvmss"
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


tusharlbvarsM = {
  tusharlb1 = {
    name                 = "tusharlb1"
    location             = "France Central"
    resource_group_name  = "tusharRG1"
    publicip_name        = "tusharlbpublicip"
    public_ip_address_id = ""
  }
}

tusharlb_backendpool_varM = {
  tusharlb_backendpool1 = {
    name            = "tusharlb_backendpool1"
    loadbalancer_id = ""
    lb_name         = "tusharlb1"
  }
}

tusharlb_backendpool_addressvarsM = {
  tusharbackend_address1 = {
    name                    = "tusharbackend_address1"
    backend_address_pool_id = ""
    backendpool_name        = "tusharlb_backendpool1"
    ip_address              = ""
    virtual_network_id      = ""
    vm_name                 = "tusharvm1"
    virtual_network_name    = "tusharvnet1"
  }
  # tusharbackend_address2 = {
  #   name                    = "tusharbackend_address2"
  #   backend_address_pool_id = ""
  #   backendpool_name        = "tusharlb_backendpool1"
  #   ip_address              = ""
  #   virtual_network_id      = ""
  #   vm_name                 = "tusharvm2"
  #   virtual_network_name    = "tusharvnet1"
  # }
}

tusharlb_VMs_backendvarsM = {
  tusharvm1 = {
    name                = "tusharvm1"
    resource_group_name = "tusharRG1"
  }
  # tusharvm2 = {
  #   name                = "tusharvm2"
  #   resource_group_name = "tusharRG1"
  # }
}

tusharvnet_lbvarsM = {
  tusharvnet1 = {
    name                = "tusharvnet1"
    resource_group_name = "tusharRG1"
  }
}

tusharlb_healthprobevarsM = {
  tushar_http-probe = {
    name                = "tushar_http-probe"
    port                = 80
    lb_name             = "tusharlb1"
    protocol            = "Http"
    number_of_probes    = 2
    request_path        = "/health"
    interval_in_seconds = 10
    loadbalancer_id     = ""
  }
  tushar_tcp-probe = {
    name                = "tushar_tcp-probe"
    port                = 443
    protocol            = "Tcp"
    lb_name             = "tusharlb1"
    number_of_probes    = null
    request_path        = ""
    interval_in_seconds = null
    loadbalancer_id     = ""
  }
}

tusharlb_rulevarsM = {
  rule1 = {
    name                           = "tushar-rule-http"
    protocol                       = "Tcp"
    lb_name                        = "tusharlb1"
    frontend_ip_configuration_name = "tusharlb1-frontend_ip_config"
    frontend_port                  = 80
    backend_port                   = 80
    enable_tcp_reset               = true
    idle_timeout_in_minutes        = 4
    load_distribution              = "Default"
    loadbalancer_id                = ""
    backend_address_pool_ids       = []
    probe_id                       = ""
    probe_name                     = "tushar_tcp-probe"
    backendpool_name               = "tusharlb_backendpool1"
  }
  rule2 = {
    name                           = "tushar-rule-https"
    protocol                       = "Tcp"
    lb_name                        = "tusharlb1"
    frontend_ip_configuration_name = "tusharlb1-frontend_ip_config"
    frontend_port                  = 443
    backend_port                   = 443
    enable_tcp_reset               = false
    idle_timeout_in_minutes        = 4
    load_distribution              = "Default"
    loadbalancer_id                = ""
    backend_address_pool_ids       = []
    probe_id                       = ""
    probe_name                     = "tushar_tcp-probe"
    backendpool_name               = "tusharlb_backendpool1"
  }
}


tusharlinuxvmssvarsM = {
  tusharlinuxvmss1 = {
    name                            = "tusharlinuxvmss1"
    resource_group_name             = "tusharRG1"
    location                        = "France Central"
    admin_username                  = ""
    admin_password                  = "tusharlinuxvmss1pass@21"
    disable_password_authentication = false
    sku                             = "Standard_F1"
    instances                       = 1
    nic_name                        = "tusharlinuxvmssnic"
    ip_configuration_name           = "tusharlinuxvmssip_config"
    primary                         = true
    subnet_id                       = ""
    subnet_name                     = "tusharsubnet3"
  }
}

tusharwindowsvmvarM = {
  tusharwindowvm1 = {
    name                  = "tusharwindowvm1"
    resource_group_name   = "tusharRG1"
    location              = "France Central"
    size                  = "Standard_F1"
    admin_username        = ""
    admin_password        = "tusharwindowvm1@21pass"
    network_interface_ids = []
    nic_name              = "tusharwindowsvmnic1"
  }
}

tusharwindowsvmssvarsM = {
  twinvmss1 = {
    name                  = "twinvmss1"
    resource_group_name   = "tusharRG1"
    location              = "France Central"
    sku                   = "Standard_F1"
    instances             = 1
    admin_username        = ""
    admin_password        = "tusharwinvmss1@21"
    nic_name              = "tusharwinvmssnic1"
    subnet_id             = ""
    subnet_name           = "tusharsubnetwindowsvmss"
    ip_configuration_name = "tusharwinvmss1ip_config"
    primary               = true
  }
}