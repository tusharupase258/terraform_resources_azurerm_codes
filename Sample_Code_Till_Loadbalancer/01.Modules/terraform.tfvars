tusharRGsvarm = {
  tusharRG1 = {
    name     = "tusharRG1"
    location = "France Central"
  }
}

tusharStorageVarM = {
  tusharStorage011 = {
    name                     = "tusharstorage011"
    location                 = "France Central"
    resource_group_name      = "tusharRG1"
    account_tier             = "Standard"
    account_replication_type = "ZRS"
  }
}

tusharcontainersvarsM = {
  tusharContainer1 = {
    name                  = "tusharcontainer1"
    storage_account_name  = "tusharstorage011"
    container_access_type = "private"
  }
}

tusharvnetvarsm = {
  tusharvnet1 = {
    name                = "tusharvnet1"
    resource_group_name = "tusharRG1"
    location            = "France Central"
    address_space       = ["10.1.0.0/16"]
  }
}

tusharsubnetvarsM = {
  tusharsubnet1 = {
    name                 = "tusharsubnet1"
    virtual_network_name = "tusharvnet1"
    resource_group_name  = "tusharRG1"
    address_prefixes     = ["10.1.1.0/24"]
  }

  tusharsubnet2 = {
    name                 = "tusharsubnet2"
    virtual_network_name = "tusharvnet1"
    resource_group_name  = "tusharRG1"
    address_prefixes     = ["10.1.2.0/24"]
  }

  AzureBastionSubnet = {
    name                 = "AzureBastionSubnet"
    virtual_network_name = "tusharvnet1"
    resource_group_name  = "tusharRG1"
    address_prefixes     = ["10.1.3.0/24"]
  }
}

tusharpublicvarsM = {
  # tusharpublicIp1 = {
  #   name                = "tusharpublicIp1"
  #   resource_group_name = "tusharRG1"
  #   location            = "France Central"
  #   allocation_method   = "Static"
  # }
  # tusharpublicIp2 = {
  #   name                = "tusharpublicIp2"
  #   resource_group_name = "tusharRG1"
  #   location            = "France Central"
  #   allocation_method   = "Static"
  # }
  tusharpublicbastion = {
    name                = "tusharpublicbastion"
    resource_group_name = "tusharRG1"
    location            = "France Central"
    allocation_method   = "Static"
  }
  tusharpubliciplb = {
    name                = "tusharpubliciplb"
    resource_group_name = "tusharRG1"
    location            = "France Central"
    allocation_method   = "Static"
  }
}

tusharnicsvarsM = {
  tusharnic1 = {
    name                          = "tusharnic1"
    location                      = "France Central"
    resource_group_name           = "tusharRG1"
    ip_configuration_name         = "ipconfignic1"
    private_ip_address_allocation = "Dynamic"
    # public_ip                     = "tusharpublicIp1"
    subnet = "tusharsubnet1"
  }

  tusharnic2 = {
    name                          = "tusharnic2"
    location                      = "France Central"
    resource_group_name           = "tusharRG1"
    ip_configuration_name         = "ipconfignic2"
    private_ip_address_allocation = "Dynamic"
    # public_ip                     = "tusharpublicIp2"
    subnet = "tusharsubnet2"
  }
}

tusharkeyvaultsvarM = {
  tusharkeyvault1 = {
    name                = "tusharkeyvault1"
    location            = "France Central"
    resource_group_name = "tusharRG1"
    sku_name            = "standard"
  }
}

tusharkvsecretvarsM = {
  tusharlinuxvm1 = {
    name          = "tusharlinuxvm1"
    keyvault_name = "tusharkeyvault1"
  }
  tusharlinuxvm2 = {
    name          = "tusharlinuxvm2"
    keyvault_name = "tusharkeyvault1"
  }
}

tusharlinuxvmvarsM = {
  tusharlinuxvm1 = {
    name                = "tusharlinuxvm1"
    resource_group_name = "tusharRG1"
    location            = "France Central"
    size                = "Standard_F2"
    nic_name            = "tusharnic1"
  }

  tusharlinuxvm2 = {
    name                = "tusharlinuxvm2"
    resource_group_name = "tusharRG1"
    location            = "France Central"
    size                = "Standard_F2"
    nic_name            = "tusharnic2"
  }
}
