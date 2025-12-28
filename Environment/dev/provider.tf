terraform {
  backend "azurerm" {
    resource_group_name  = "rg-tondu"
    storage_account_name = "storage2712"

    container_name = "container2712"
    key            = "terraform.tfstate"

  }
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "ff4b8dcc-265a-4fdf-9501-146b37e6ac66"
}
