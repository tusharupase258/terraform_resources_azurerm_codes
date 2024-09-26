data "azurerm_subnet" "appgatewaysubnetdata" {
  name = "Application_Gateway_Subnet"
  resource_group_name = "tusharRG1"
  virtual_network_name = "tusharvnet1"
}

data "azurerm_public_ip" "tusharapgwpublicipdata" {
  name = "tusharapplicationgateway"
  resource_group_name = "tusharRG1"
}

data "azurerm_network_interface" "nic1_data" {
  name = "tusharnic1"
  resource_group_name = "tusharRG1"
}

data "azurerm_network_interface" "nic2_data" {
  name = "tusharnic2"
  resource_group_name = "tusharRG1"
}