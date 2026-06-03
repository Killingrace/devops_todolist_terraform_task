output "dns_name" {
  value = module.network.pip_dns_label
}

output "storage_account_id" {
  value = module.storage_account.storage_account_id
}