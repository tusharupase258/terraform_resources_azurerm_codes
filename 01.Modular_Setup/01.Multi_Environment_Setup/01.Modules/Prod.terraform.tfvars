tusharRGvarsM = {
  tusharRG1_prod = {
    name     = "tusharRG1_prod"
    location = "France Central"
  }
}

tusharstoragevarsM = {
  tusharstorage193p = {
    name                = "tusharstorage193p"
    location            = "France Central"
    resource_group_name = "tusharRG1_prod"
  }
  tusharstorage194p = {
    name                = "tusharstorage194p"
    location            = "France Central"
    resource_group_name = "tusharRG1_prod"
  }
}

tusharContainervarsM = {
  tusharcontainer1p = {
    name                 = "tusharcontainer1p"
    storage_account_id   = ""
    storage_account_name = "tusharstorage193p"
  }
  tusharcontainer2p = {
    name                 = "tusharcontainer2p"
    storage_account_id   = ""
    storage_account_name = "tusharstorage194p"
  }
}

tusharvnetvarsM = {
  tusharvnet1_prod = {
    name                = "tusharvnet1_prod"
    location            = "France Central"
    resource_group_name = "tusharRG1_prod"
    address_space       = ["10.1.0.0/16"]
  }
}

tusharsubnetsvarM = {
  tusharsubnet1_prod = {
    name                 = "tusharsubnet1_prod"
    resource_group_name  = "tusharRG1_prod"
    virtual_network_name = "tusharvnet1_prod"
    address_prefixes     = ["10.1.1.0/24"]
  }
  tusharsubnet2_prod = {
    name                 = "tusharsubnet2_prod"
    resource_group_name  = "tusharRG1_prod"
    virtual_network_name = "tusharvnet1_prod"
    address_prefixes     = ["10.1.2.0/24"]
  }
  AzureBastionSubnet = {
    name                 = "AzureBastionSubnet"
    resource_group_name  = "tusharRG1_prod"
    virtual_network_name = "tusharvnet1_prod"
    address_prefixes     = ["10.1.3.0/24"]
  }
  tusharsubnet3_prod = {
    name                 = "tusharsubnet3_prod"
    resource_group_name  = "tusharRG1_prod"
    virtual_network_name = "tusharvnet1_prod"
    address_prefixes     = ["10.1.4.0/24"]
  }
  tusharwindowvmsubnet1_prod = {
    name                 = "tusharwindowvmsubnet1_prod"
    resource_group_name  = "tusharRG1_prod"
    virtual_network_name = "tusharvnet1_prod"
    address_prefixes     = ["10.1.5.0/24"]
  }
  tusharsubnetwindowsvmss_prod = {
    name                 = "tusharsubnetwindowsvmss_prod"
    resource_group_name  = "tusharRG1_prod"
    virtual_network_name = "tusharvnet1_prod"
    address_prefixes     = ["10.1.6.0/24"]
  }
}

tusharkeyvaultsvarsM = {
  tusharkeyvault2p = {
    name                = "tusharkeyvault2p"
    location            = "France Central"
    sku_name            = "standard"
    resource_group_name = "tusharRG1_prod"
    tenant_id           = ""
    object_id           = ""
    value               = ""
    key_vault_id        = ""
  }
}

tusharvmvarsM = {
 tusharvm1p = {
    name                            = "tusharvm1p"
    value                           = ""
    key_vault_id                    = ""
    resource_group_name             = "tusharRG1_prod"
    location                        = "France Central"
    size                            = "Standard_F1"
    nic_name                        = "tusharnic1_prod"
    admin_username                  = ""
    admin_password                  = ""
    disable_password_authentication = false
    network_interface_ids           = []
    keyvault_name                   = "tusharkeyvault2p"
    nic_name                        = "tusharnic1_prod"
  }
  # tusharvm2p = {
  #   name                            = "tusharvm2p"
  #   value                           = ""
  #   key_vault_id                    = ""
  #   keyvault_name                   = "tusharkeyvault2p"
  #   resource_group_name             = "tusharRG1_prod"
  #   location                        = "France Central"
  #   size                            = "Standard_F1"
  #   nic_name                        = "tusharnic2_prod"
  #   admin_password                  = ""
  #   admin_username                  = ""
  #   disable_password_authentication = false
  #   network_interface_ids           = []
  #   nic_name                        = "tusharnic2_prod"
  # }
}

tusharnicvarsM = {
  tusharnic1_prod = {
    name                          = "tusharnic1_prod"
    location                      = "France Central"
    resource_group_name           = "tusharRG1_prod"
    ip_configuration_name         = "tusharnic1_prodip"
    private_ip_address_allocation = ""
    # public_ip_address_id          = ""
    subnet_id   = ""
    subnet_name = "tusharsubnet1_prod"
    # public_ip_name                = "tusharpublicip1"
    nsg_name = "tusharnsgallowssh22"
  }
  tusharnic2_prod = {
    name                          = "tusharnic2_prod"
    location                      = "France Central"
    resource_group_name           = "tusharRG1_prod"
    ip_configuration_name         = "tusharnic2_prodip"
    private_ip_address_allocation = ""
    # public_ip_address_id          = ""
    subnet_id   = ""
    subnet_name = "tusharsubnet2_prod"
    # public_ip_name                = "tusharpublicip2"
    # nsg_name = "tusharnsgallowssh22"
  }
  tusharlinuxvmssnic_prod = {
    name                          = "tusharlinuxvmssnic_prod"
    location                      = "France Central"
    resource_group_name           = "tusharRG1_prod"
    ip_configuration_name         = "tusharlinuxvmssip_config_prod"
    private_ip_address_allocation = ""
    subnet_id                     = ""
    subnet_name                   = "tusharsubnet3_prod"
    # nsg_name                      = "tusharnsgallowssh22"
  }
  tusharwindowsvmnic1_prod = {
    name                          = "tusharwindowsvmnic1_prod"
    location                      = "France Central"
    resource_group_name           = "tusharRG1_prod"
    ip_configuration_name         = "tusharwindowsvm1ipconfig_prod"
    private_ip_address_allocation = ""
    subnet_id                     = ""
    subnet_name                   = "tusharwindowvmsubnet1_prod"
    # nsg_name                      = "tusharnsgallowssh22"
  }
  tusharwinvmssnic1 = {
    name                          = "tusharwinvmssnic1"
    location                      = "France Central"
    resource_group_name           = "tusharRG1_prod"
    ip_configuration_name         = "tusharwinvmss1ipconfig_prod"
    private_ip_address_allocation = ""
    subnet_id                     = ""
    subnet_name                   = "tusharsubnetwindowsvmss_prod"
  }
}

tusharpublicipvarsM = {
  #   tusharpublicip1_prod = {
  #     name                = "tusharpublicip1_prod"
  #     location            = "France Central"
  #     resource_group_name = "tusharRG1_prod"
  #     allocation_method   = ""
  #   }
  #   tusharpublicip2_prod = {
  #     name                = "tusharpublicip2_prod"
  #     location            = "France Central"
  #     resource_group_name = "tusharRG1_prod"
  #     allocation_method   = ""
  #   }
  tusharpublicipbastion = {
    name                = "tusharbastionpublicip"
    location            = "France Central"
    resource_group_name = "tusharRG1_prod"
    allocation_method   = ""
  }
  tusharlbpublicip_prod = {
    name                = "tusharlbpublicip_prod"
    location            = "France Central"
    resource_group_name = "tusharRG1_prod"
    allocation_method   = ""
  }
}

tusharnsgvarsM = {
  tusharnsgallowssh22_prod = {
    name                         = "tusharnsgallowssh22_prod"
    location                     = "France Central"
    resource_group_name          = "tusharRG1_prod"
    rule_name                    = "allowsshvM"
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
    resource_group_name   = "tusharRG1_prod"
    subnet_name           = "AzureBastionSubnet"
    public_ip_name        = "tusharbastionpublicip"
    virtual_network_name  = "tusharvnet1_prod"
    ipconfig_bastion_name = "tusharbastionipconfig"
    public_ip_address_id  = ""
    subnet_id             = ""
  }
}


tusharlbvarsM = {
  tusharlb1_prod = {
    name                 = "tusharlb1_prod"
    location             = "France Central"
    resource_group_name  = "tusharRG1_prod"
    publicip_name        = "tusharlbpublicip_prod"
    public_ip_address_id = ""
  }
}

tusharlb_backendpool_varM = {
  tusharlb_backendpool1_prod = {
    name            = "tusharlb_backendpool1_prod"
    loadbalancer_id = ""
    lb_name         = "tusharlb1_prod"
  }
}

tusharlb_backendpool_addressvarsM = {
  tusharbackend_address1_prod = {
    name                    = "tusharbackend_address1_prod"
    backend_address_pool_id = ""
    backendpool_name        = "tusharlb_backendpool1_prod"
    ip_address              = ""
    virtual_network_id      = ""
    vm_name                 = "tusharvm1p"
    virtual_network_name    = "tusharvnet1_prod"
  }
  # tusharbackend_address2_prod= {
  #   name                    = "tusharbackend_address2_prod"
  #   backend_address_pool_id = ""
  #   backendpool_name        = "tusharlb_backendpool1_prod"
  #   ip_address              = ""
  #   virtual_network_id      = ""
  #   vm_name                 = "tusharvm2p"
  #   virtual_network_name    = "tusharvnet1_prod"
  # }
}

tusharlb_VMs_backendvarsM = {
 tusharvm1p = {
    name                = "tusharvm1p"
    resource_group_name = "tusharRG1_prod"
  }
  # tusharvm2p = {
  #   name                = "tusharvm2p"
  #   resource_group_name = "tusharRG1_prod"
  # }
}

tusharvnet_lbvarsM = {
  tusharvnet1_prod = {
    name                = "tusharvnet1_prod"
    resource_group_name = "tusharRG1_prod"
  }
}

tusharlb_healthprobevarsM = {
  tushar_http-probe_prod = {
    name                = "tushar_http-probe_prod"
    port                = 80
    lb_name             = "tusharlb1_prod"
    protocol            = "Http"
    number_of_probes    = 2
    request_path        = "/health"
    interval_in_seconds = 10
    loadbalancer_id     = ""
  }
  tushar_tcp-probe_prod = {
    name                = "tushar_tcp-probe_prod"
    port                = 443
    protocol            = "Tcp"
    lb_name             = "tusharlb1_prod"
    number_of_probes    = null
    request_path        = ""
    interval_in_seconds = null
    loadbalancer_id     = ""
  }
}

tusharlb_rulevarsM = {
  rule1 = {
    name                           = "tushar-rule-http_prod"
    protocol                       = "Tcp"
    lb_name                        = "tusharlb1_prod"
    frontend_ip_configuration_name = "tusharlb1_prod-frontend_ip_config_prod"
    frontend_port                  = 80
    backend_port                   = 80
    enable_tcp_reset               = true
    idle_timeout_in_minutes        = 4
    load_distribution              = "Default"
    loadbalancer_id                = ""
    backend_address_pool_ids       = []
    probe_id                       = ""
    probe_name                     = "tushar_tcp-probe_prod"
    backendpool_name               = "tusharlb_backendpool1_prod"
  }
  rule2 = {
    name                           = "tushar-rule-https_prod"
    protocol                       = "Tcp"
    lb_name                        = "tusharlb1_prod"
    frontend_ip_configuration_name = "tusharlb1_prod-frontend_ip_config_prod"
    frontend_port                  = 443
    backend_port                   = 443
    enable_tcp_reset               = false
    idle_timeout_in_minutes        = 4
    load_distribution              = "Default"
    loadbalancer_id                = ""
    backend_address_pool_ids       = []
    probe_id                       = ""
    probe_name                     = "tushar_tcp-probe_prod"
    backendpool_name               = "tusharlb_backendpool1_prod"
  }
}


tusharlinuxvmssvarsM = {
  tusharlinuxvmss1_prod = {
    name                            = "tusharlinuxvmss1_prod"
    resource_group_name             = "tusharRG1_prod"
    location                        = "France Central"
    admin_username                  = ""
    admin_password                  = "tusharlinuxvmss1pass@21"
    disable_password_authentication = false
    sku                             = "Standard_F1"
    instances                       = 1
    nic_name                        = "tusharlinuxvmssnic_prod"
    ip_configuration_name           = "tusharlinuxvmssip_config_prod"
    primary                         = true
    subnet_id                       = ""
    subnet_name                     = "tusharsubnet3_prod"
  }
}

tusharwindowsvmvarM = {
tusharwindowvm1p_prod = {
    name                  = "tusharwindowvm1_prod"
    resource_group_name   = "tusharRG1_prod"
    location              = "France Central"
    size                  = "Standard_F1"
    admin_username        = ""
    admin_password        = "tusharwindowvm1@21pass"
    network_interface_ids = []
    nic_name              = "tusharwindowsvmnic1_prod"
  }
}

tusharwindowsvmssvarsM = {
  twinvmss1_prod = {
    name                  = "twinvmss1_prod"
    resource_group_name   = "tusharRG1_prod"
    location              = "France Central"
    sku                   = "Standard_F1"
    instances             = 1
    admin_username        = ""
    admin_password        = "tusharwinvmss1@21"
    nic_name              = "tusharwinvmssnic1_prod"
    subnet_id             = ""
    subnet_name           = "tusharsubnetwindowsvmss_prod"
    ip_configuration_name = "tusharwinvmss1ip_config_prod"
    primary               = true
  }
}