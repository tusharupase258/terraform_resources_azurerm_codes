terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.112.0"   #Updated the latest version from @https://registry.terraform.io/providers/hashicorp/azurerm/latest
    }
  }

  #   backend "azurerm" {
  #     resource_group_name  = "Donotdeletewipforpipe"    # Can be passed via `-backend-config="resource_group_name=<resource group name>"` in the `init` command.
  #     storage_account_name = "ppipestoragetu"           # Can be passed via `-backend-config="storage_account_name=<storage account name>"` in the `init` command.
  #     container_name       = "ppipecontainer"           # Can be passed via `-backend-config="container_name=<container name>"` in the `init` command.
  #     key                  = "prodtf/terraform.tfstate" # Can be passed via `-backend-config="key=<blob key name>"` in the `init` command.
  #   }

}

provider "azurerm" {
  features {}  #Use feature block to enable basic funtionality
}
