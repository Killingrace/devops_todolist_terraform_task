output "storage_account_id" {
  value = azurerm_storage_account.sa.id
}

output "container_id" {
  value = azurerm_storage_container.sac.id
}
