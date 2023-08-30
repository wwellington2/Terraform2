resource "azurerm_resource_group" "rg1" {
  name     = var.resource_group_name1
  location = "eastus"

    tags = {
    Environment = "Terraform Getting Started"
    Team = "DevOps"
  }
}

resource "azurerm_resource_group" "rg2" {
  name     = var.resource_group_name2
  location = "eastus"

    tags = {
    Environment = "Terraform Getting Started"
    Team = "DevOps"
  }
}

resource "azurerm_resource_group" "rg3" {
  name     = var.resource_group_name3
  location = "eastus"

    tags = {
    Environment = "Terraform Getting Started"
    Team = "DevOps"
  }
}

# Create a virtual network
resource "azurerm_virtual_network" "vnet" {
  name                = "myTFVnet"
  address_space       = ["10.0.0.0/16"]
  location            = "eastus"
  resource_group_name = var.resource_group_name1
}
