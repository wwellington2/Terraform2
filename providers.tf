terraform {
  required_providers {
    azurerm = {
      version = "~> 3.29.0"
    }
  }

  backend "azurerm" {
    use_oidc         = true
    use_azuread_auth = true
  }
}

provider "azurerm" {
  use_oidc                   = false
  skip_provider_registration = true
  features { }
}