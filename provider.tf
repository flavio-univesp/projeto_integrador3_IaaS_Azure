terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.33.0"

    }
  }
  required_version = ">= 1.1.0"
}

provider "azurerm" {
  features {
  }
  use_msi                         = false
  use_cli                         = true
  use_oidc                        = false
  resource_provider_registrations = "none"
  environment                     = "public"
}
