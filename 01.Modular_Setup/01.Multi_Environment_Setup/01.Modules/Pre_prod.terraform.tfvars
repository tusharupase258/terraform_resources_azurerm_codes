tusharRGvarsM = {
  tusharRG1_Pre_prod = {
    name     = "tusharRG1_Pre_prod"
    location = "France Central"
  }
}

tusharstoragevarsM = {
  tusharstorage193pp = {
    name                = "tusharstorage193pp"
    location            = "France Central"
    resource_group_name = "tusharRG1_Pre_prod"
  }
  tusharstorage194pp = {
    name                = "tusharstorage194pp"
    location            = "France Central"
    resource_group_name = "tusharRG1_Pre_prod"
  }
}

tusharContainervarsM = {
  tusharcontainer1pp = {
    name                 = "tusharcontainer1pp"
    storage_account_id   = ""
    storage_account_name = "tusharstorage193pp"
  }
  tusharcontainer2pp = {
    name                 = "tusharcontainer2pp"
    storage_account_id   = ""
    storage_account_name = "tusharstorage194pp"
  }
}

tusharvnetvarsM = {
  tusharvnet1_Pre_prod = {
    name                = "tusharvnet1_Pre_prod"
    location            = "France Central"
    resource_group_name = "tusharRG1_Pre_prod"
    address_space       = ["10.1.0.0/16"]
  }
}

tusharsubnetsvarM = {
  tusharsubnet1_Pre_prod = {
    name                 = "tusharsubnet1_Pre_prod"
    resource_group_name  = "tusharRG1_Pre_prod"
    virtual_network_name = "tusharvnet1_Pre_prod"
    address_prefixes     = ["10.1.1.0/24"]
  }
  tusharsubnet2_Pre_prod = {
    name                 = "tusharsubnet2_Pre_prod"
    resource_group_name  = "tusharRG1_Pre_prod"
    virtual_network_name = "tusharvnet1_Pre_prod"
    address_prefixes     = ["10.1.2.0/24"]
  }
  AzureBastionSubnet = {
    name                 = "AzureBastionSubnet"
    resource_group_name  = "tusharRG1_Pre_prod"
    virtual_network_name = "tusharvnet1_Pre_prod"
    address_prefixes     = ["10.1.3.0/24"]
  }
  tusharsubnet3_Pre_prod = {
    name                 = "tusharsubnet3_Pre_prod"
    resource_group_name  = "tusharRG1_Pre_prod"
    virtual_network_name = "tusharvnet1_Pre_prod"
    address_prefixes     = ["10.1.4.0/24"]
  }
  tusharwindowvmsubnet1_Pre_prod = {
    name                 = "tusharwindowvmsubnet1_Pre_prod"
    resource_group_name  = "tusharRG1_Pre_prod"
    virtual_network_name = "tusharvnet1_Pre_prod"
    address_prefixes     = ["10.1.5.0/24"]
  }
  tusharsubnetwindowsvmss_Pre_prod = {
    name                 = "tusharsubnetwindowsvmss_Pre_prod"
    resource_group_name  = "tusharRG1_Pre_prod"
    virtual_network_name = "tusharvnet1_Pre_prod"
    address_prefixes     = ["10.1.6.0/24"]
  }
}

tusharkeyvaultsvarsM = {
  tusharkeyvault2pp = {
    name                = "tusharkeyvault2pp"
    location            = "France Central"
    sku_name            = "standard"
    resource_group_name = "tusharRG1_Pre_prod"
    tenant_id           = ""
    object_id           = ""
    value               = ""
    key_vault_id        = ""
  }
}

tusharvmvarsM = {
  tusharvm1pp = {
    name                            = "tusharvm1pp"
    value                           = ""
    key_vault_id                    = ""
    resource_group_name             = "tusharRG1_Pre_prod"
    location                        = "France Central"
    size                            = "Standard_F1"
    nic_name                        = "tusharnic1_Pre_prod"
    admin_username                  = ""
    admin_password                  = ""
    disable_password_authentication = false
    network_interface_ids           = []
    keyvault_name                   = "tusharkeyvault2pp"
    nic_name                        = "tusharnic1_Pre_prod"
  }
  # tusharvm2pp = {
  #   name                            = "tusharvm2pp"
  #   value                           = ""
  #   key_vault_id                    = ""
  #   keyvault_name                   = "tusharkeyvault2pp"
  #   resource_group_name             = "tusharRG1_Pre_prod"
  #   location                        = "France Central"
  #   size                            = "Standard_F1"
  #   nic_name                        = "tusharnic2_Pre_prod"
  #   admin_password                  = ""
  #   admin_username                  = ""
  #   disable_password_authentication = false
  #   network_interface_ids           = []
  #   nic_name                        = "tusharnic2_Pre_prod"
  # }
}

tusharnicvarsM = {
  tusharnic1_Pre_prod = {
    name                          = "tusharnic1_Pre_prod"
    location                      = "France Central"
    resource_group_name           = "tusharRG1_Pre_prod"
    ip_configuration_name         = "tusharnic1_Pre_prodip"
    private_ip_address_allocation = ""
    # public_ip_address_id          = ""
    subnet_id   = ""
    subnet_name = "tusharsubnet1_Pre_prod"
    # public_ip_name                = "tusharpublicip1"
    nsg_name = "tusharnsgallowssh22"
  }
  tusharnic2_Pre_prod = {
    name                          = "tusharnic2_Pre_prod"
    location                      = "France Central"
    resource_group_name           = "tusharRG1_Pre_prod"
    ip_configuration_name         = "tusharnic2_Pre_prodip"
    private_ip_address_allocation = ""
    # public_ip_address_id          = ""
    subnet_id   = ""
    subnet_name = "tusharsubnet2_Pre_prod"
    # public_ip_name                = "tusharpublicip2"
    # nsg_name = "tusharnsgallowssh22"
  }
  tusharlinuxvmssnic_Pre_prod = {
    name                          = "tusharlinuxvmssnic_Pre_prod"
    location                      = "France Central"
    resource_group_name           = "tusharRG1_Pre_prod"
    ip_configuration_name         = "tusharlinuxvmssip_config_Pre_prod"
    private_ip_address_allocation = ""
    subnet_id                     = ""
    subnet_name                   = "tusharsubnet3_Pre_prod"
    # nsg_name                      = "tusharnsgallowssh22"
  }
  tusharwindowsvmnic1_Pre_prod = {
    name                          = "tusharwindowsvmnic1_Pre_prod"
    location                      = "France Central"
    resource_group_name           = "tusharRG1_Pre_prod"
    ip_configuration_name         = "tusharwindowsvm1ipconfig_Pre_prod"
    private_ip_address_allocation = ""
    subnet_id                     = ""
    subnet_name                   = "tusharwindowvmsubnet1_Pre_prod"
    # nsg_name                      = "tusharnsgallowssh22"
  }
  tusharwinvmssnic1_Pre_prod = {
    name                          = "tusharwinvmssnic1_Pre_prod"
    location                      = "France Central"
    resource_group_name           = "tusharRG1_Pre_prod"
    ip_configuration_name         = "tusharwinvmss1ipconfig_Pre_prod"
    private_ip_address_allocation = ""
    subnet_id                     = ""
    subnet_name                   = "tusharsubnetwindowsvmss_Pre_prod"
  }
}

tusharpublicipvarsM = {
  #   tusharpublicip1_Pre_prod = {
  #     name                = "tusharpublicip1_Pre_prod"
  #     location            = "France Central"
  #     resource_group_name = "tusharRG1_Pre_prod"
  #     allocation_method   = ""
  #   }
  #   tusharpublicip2_Pre_prod = {
  #     name                = "tusharpublicip2_Pre_prod"
  #     location            = "France Central"
  #     resource_group_name = "tusharRG1_Pre_prod"
  #     allocation_method   = ""
  #   }
  tusharpublicipbastion = {
    name                = "tusharbastionpublicip"
    location            = "France Central"
    resource_group_name = "tusharRG1_Pre_prod"
    allocation_method   = ""
  }
  tusharlbpublicip_Pre_prod = {
    name                = "tusharlbpublicip_Pre_prod"
    location            = "France Central"
    resource_group_name = "tusharRG1_Pre_prod"
    allocation_method   = ""
  }
}

tusharnsgvarsM = {
  tusharnsgallowssh22_Pre_prod = {
    name                         = "tusharnsgallowssh22_Pre_prod"
    location                     = "France Central"
    resource_group_name          = "tusharRG1_Pre_prod"
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
    resource_group_name   = "tusharRG1_Pre_prod"
    subnet_name           = "AzureBastionSubnet"
    public_ip_name        = "tusharbastionpublicip"
    virtual_network_name  = "tusharvnet1_Pre_prod"
    ipconfig_bastion_name = "tusharbastionipconfig"
    public_ip_address_id  = ""
    subnet_id             = ""
  }
}


tusharlbvarsM = {
  tusharlb1_Pre_prod = {
    name                 = "tusharlb1_Pre_prod"
    location             = "France Central"
    resource_group_name  = "tusharRG1_Pre_prod"
    publicip_name        = "tusharlbpublicip_Pre_prod"
    public_ip_address_id = ""
  }
}

tusharlb_backendpool_varM = {
  tusharlb_backendpool1_Pre_prod = {
    name            = "tusharlb_backendpool1_Pre_prod"
    loadbalancer_id = ""
    lb_name         = "tusharlb1_Pre_prod"
  }
}

tusharlb_backendpool_addressvarsM = {
  tusharbackend_address1_Pre_prod = {
    name                    = "tusharbackend_address1_Pre_prod"
    backend_address_pool_id = ""
    backendpool_name        = "tusharlb_backendpool1_Pre_prod"
    ip_address              = ""
    virtual_network_id      = ""
    vm_name                 = "tusharvm1pp"
    virtual_network_name    = "tusharvnet1_Pre_prod"
  }
  # tusharbackend_address2_Pre_prod= {
  #   name                    = "tusharbackend_address2_Pre_prod"
  #   backend_address_pool_id = ""
  #   backendpool_name        = "tusharlb_backendpool1_Pre_prod"
  #   ip_address              = ""
  #   virtual_network_id      = ""
  #   vm_name                 = "tusharvm2pp"
  #   virtual_network_name    = "tusharvnet1_Pre_prod"
  # }
}

tusharlb_VMs_backendvarsM = {
  tusharvm1pp = {
    name                = "tusharvm1pp"
    resource_group_name = "tusharRG1_Pre_prod"
  }
  # tusharvm2pp = {
  #   name                = "tusharvm2pp"
  #   resource_group_name = "tusharRG1_Pre_prod"
  # }
}

tusharvnet_lbvarsM = {
  tusharvnet1_Pre_prod = {
    name                = "tusharvnet1_Pre_prod"
    resource_group_name = "tusharRG1_Pre_prod"
  }
}

tusharlb_healthprobevarsM = {
 tushar_http-probe_Pre_prod = {
    name                = "tushar_http-probe_Pre_prod"
    port                = 80
    lb_name             = "tusharlb1_Pre_prod"
    protocol            = "Http"
    number_of_probes    = 2
    request_path        = "/health"
    interval_in_seconds = 10
    loadbalancer_id     = ""
  }
  tushar_tcp-probe_Pre_prod = {
    name                = "tushar_tcp-probe_Pre_prod"
    port                = 443
    protocol            = "Tcp"
    lb_name             = "tusharlb1_Pre_prod"
    number_of_probes    = null
    request_path        = ""
    interval_in_seconds = null
    loadbalancer_id     = ""
  }
}

tusharlb_rulevarsM = {
  rule1 = {
    name                           = "tushar-rule-http_Pre_prod"
    protocol                       = "Tcp"
    lb_name                        = "tusharlb1_Pre_prod"
    frontend_ip_configuration_name = "tusharlb1-frontend_ip_config_Pre_prod"
    frontend_port                  = 80
    backend_port                   = 80
    enable_tcp_reset               = true
    idle_timeout_in_minutes        = 4
    load_distribution              = "Default"
    loadbalancer_id                = ""
    backend_address_pool_ids       = []
    probe_id                       = ""
    probe_name                     = "tushar_tcp-probe_Pre_prod"
    backendpool_name               = "tusharlb_backendpool1_Pre_prod"
  }
  rule2 = {
    name                           = "tushar-rule-https_Pre_prod"
    protocol                       = "Tcp"
    lb_name                        = "tusharlb1_Pre_prod"
    frontend_ip_configuration_name = "tusharlb1-frontend_ip_config_Pre_prod"
    frontend_port                  = 443
    backend_port                   = 443
    enable_tcp_reset               = false
    idle_timeout_in_minutes        = 4
    load_distribution              = "Default"
    loadbalancer_id                = ""
    backend_address_pool_ids       = []
    probe_id                       = ""
    probe_name                     = "tushar_tcp-probe_Pre_prod"
    backendpool_name               = "tusharlb_backendpool1_Pre_prod"
  }
}


tusharlinuxvmssvarsM = {
  tusharlinuxvmss1_Pre_prod = {
    name                            = "tusharlinuxvmss1_Pre_prod"
    resource_group_name             = "tusharRG1_Pre_prod"
    location                        = "France Central"
    admin_username                  = ""
    admin_password                  = "tusharlinuxvmss1pass@21"
    disable_password_authentication = false
    sku                             = "Standard_F1"
    instances                       = 1
    nic_name                        = "tusharlinuxvmssnic_Pre_prod"
    ip_configuration_name           = "tusharlinuxvmssip_config_Pre_prod"
    primary                         = true
    subnet_id                       = ""
    subnet_name                     = "tusharsubnet3_Pre_prod"
  }
}

tusharwindowsvmvarM = {
  tusharwindowvm1pp = {
    name                  = "tusharwindowvm1pp"
    resource_group_name   = "tusharRG1_Pre_prod"
    location              = "France Central"
    size                  = "Standard_F1"
    admin_username        = ""
    admin_password        = "tusharwindowvm1@21pass"
    network_interface_ids = []
    nic_name              = "tusharwindowsvmnic1_Pre_prod"
  }
}

tusharwindowsvmssvarsM = {
  twinvmss1_Pre_prod = {
    name                  = "twinvmss1_Pre_prod"
    resource_group_name   = "tusharRG1_Pre_prod"
    location              = "France Central"
    sku                   = "Standard_F1"
    instances             = 1
    admin_username        = ""
    admin_password        = "tusharwinvmss1@21"
    nic_name              = "tusharwinvmssnic1_Pre_prod"
    subnet_id             = ""
    subnet_name           = "tusharsubnetwindowsvmss_Pre_prod"
    ip_configuration_name = "tusharwinvmss1ip_config_Pre_prod"
    primary               = true
  }
}