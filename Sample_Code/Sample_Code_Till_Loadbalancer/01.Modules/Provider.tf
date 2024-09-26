terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.1.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.6.3"
    }
  }
  backend "azurerm" {
    resource_group_name  = "Tushar_Backend"
    storage_account_name = "ppipestoragetu3"
    container_name       = "ppipecontainer"
    key                  = "Infrastructure20092024.tfstate"
  }

}

provider "azurerm" {
  features {}
  subscription_id = "ac30d9b8-34e5-4948-80d1-d9c571735ea3"
}

provider "random" {}