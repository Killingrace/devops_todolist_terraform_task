output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}

output "pip_dns" {
  value = azurerm_public_ip.pip.domain_name_label
}

output "pip_ip" {
  value = azurerm_public_ip.pip.ip_address
}
