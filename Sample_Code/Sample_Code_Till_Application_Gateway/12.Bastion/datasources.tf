data "azurerm_subnet" "bastionsubnetdata" {
  name = "AzureBastionSubnet"
  virtual_network_name = "tusharvnet1"
  resource_group_name = "tusharRG1"
}

data "azurerm_public_ip" "bastionpublicipdata" {
  name = "tusharpublicbastion"
  resource_group_name = "tusharRG1"
}