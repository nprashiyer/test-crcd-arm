resource "azurerm_resource_group" "example" {
  name     = var.rg_name
  location = var.rg_location
}

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.57.0"
    }
  }
}

provider "azurerm" {
  features {
  }
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  subscription_id =var.subscription_id
}