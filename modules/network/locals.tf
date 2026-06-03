locals {
  domain_name_label = var.dns_name != null ? var.dns_name : "${var.dns_label_prefix}-${random_integer.pip_dns.result}"
}