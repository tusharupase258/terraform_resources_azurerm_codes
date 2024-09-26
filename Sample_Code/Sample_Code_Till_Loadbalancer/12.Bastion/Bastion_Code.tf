resource "azurerm_bastion_host" "tusharbastion" {
#   for_each = var.tusharbastionvar
  name = "tusharBastion"
  location = "France Central"
  resource_group_name = "tusharRG1"
  ip_configuration {
    name = "tusharbastionipconfig"
    public_ip_address_id = data.azurerm_public_ip.bastionpublicipdata.id
    subnet_id = data.azurerm_subnet.bastionsubnetdata.id
  }
}