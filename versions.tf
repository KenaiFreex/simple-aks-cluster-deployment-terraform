terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=2.20.0"
    }
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true 
}
