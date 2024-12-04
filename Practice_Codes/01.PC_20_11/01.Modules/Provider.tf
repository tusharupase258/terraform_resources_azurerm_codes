terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.10.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.6.3"
    }
  }
  backend "azurerm" {
    resource_group_name  = "Tushar_Backend"
    storage_account_name = "ppipestoragetu46"
    container_name       = "ppipecontainer"
    key                  = "practiceterraform_20_11.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "714f70d8-073b-4880-a373-42e6a72c7539"
}