terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.75.0"
    }
  }
}

provider "azurerm" {
  features {

  }
}

resource "azurerm_resource_group" "default" {
  name     = var.resource_group_name
  location = var.location
}

module "network" {
  source              = "./modules/network"
  resource_group_name = azurerm_resource_group.default.location
  location            = azurerm_resource_group.default.location
}


module "name" {
  source               = "./modules/compute"
  resource_group_name  = azurerm_resource_group.default.name
  location             = azurerm_resource_group.default.location
  subnet_id            = module.network.subnet_id
  public_ip_address_id = module.network.pip_id
  admin_username       = "azureuser"
  path_to_ssh_key      = "~/.ssh/id_ed25519.pub"
  vm_size              = "Standard_D2s_v3"
}