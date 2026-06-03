resource "azurerm_storage_account" "sa" {
  name                     = var.storage_account_name
  location                 = var.location
  resource_group_name      = var.resource_group_name
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
}

resource "azurerm_storage_container" "sac" {
  name                  = var.container_name
  storage_account_id    = azurerm_storage_account.sa.id
  container_access_type = var.container_access_type
}
