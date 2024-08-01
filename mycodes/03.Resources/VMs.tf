resource "azurerm_resource_group" "Tushar1" {
    name= "Tushar1"
    location = "West us"
}

resource "azurerm_storage_account" "sc1" {
    name = "sc1"
    location = azurerm_resource_group.Tushar1.location
    resource_group_name = azurerm_resource_group.Tushar1.name
    account_tier = "Standard"
    account_replication_type = "LRS"
}

resource "azurerm_virtual_network" "Vnet1" {
    name = "Vnet1"
    location = azurerm_resource_group.Tushar1.location
    resource_group_name = azurerm_resource_group.Tushar1.name
    address_space = ["10.0.0.0/16"]
}