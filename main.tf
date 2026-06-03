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
  resource_group_name = azurerm_resource_group.default.name
  location            = azurerm_resource_group.default.location
}


module "computing" {
  source               = "./modules/compute"
  resource_group_name  = azurerm_resource_group.default.name
  location             = azurerm_resource_group.default.location
  subnet_id            = module.network.subnet_id
  public_ip_address_id = module.network.pip_id
  admin_username       = var.admin_username
  path_to_ssh_key      = var.path_to_ssh_key
  vm_size              = var.vm_size
  network_security_group_id = module.network.network_security_group_id
}

module "storage_account" {
  source = "./modules/storage"
  resource_group_name = azurerm_resource_group.default.name
  location = azurerm_resource_group.default.location
  storage_account_name = var.storage_account_name
}