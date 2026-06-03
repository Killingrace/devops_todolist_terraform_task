locals {
  domain_name_label = var.dns_label != null ? var.dns_label : "${var.dns_label_prefix}-${random_integer.pip_dns.result}"
}