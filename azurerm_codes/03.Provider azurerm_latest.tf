#How to use this provider
#To install this provider, copy and paste this code into your Terraform configuration. Then, run terraform init.
#You want find the latest provider at #https://registry.terraform.io/providers/hashicorp/azurerm/latest

Terraform 0.13+
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.112.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
}
