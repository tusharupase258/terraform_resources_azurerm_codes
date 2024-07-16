resource "azurerm_resource_group" "Donotdeletewipforpipe" {
  name     = "Donotdeletewipforpipe"
  location = "West Europe"
}

resource "azurerm_storage_account" "ppipestoragetu1" {
  name                     = "ppipestoragetu1"
  resource_group_name      = azurerm_resource_group.Donotdeletewipforpipe.name
  location                 = azurerm_resource_group.Donotdeletewipforpipe.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "ppipecontainer" {
  name                  = "ppipecontainer"
  storage_account_name  = azurerm_storage_account.ppipestoragetu1.name
  container_access_type = "private"
}