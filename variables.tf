variable "resource_group_name" {
  type        = string
  description = "Name of your resource group"
}

variable "location" {
  type        = string
  description = "location for all resources"
}

variable "path_to_ssh_key" {
  type        = string
  description = "Path to your public ssh key on local machine"
}

variable "vm_size" {
  type        = string
  description = "Virtual Machine Size"
}

variable "admin_username" {
  type        = string
  description = "Admin Username"
}

variable "storage_account_name" {
  type        = string
  description = "name of your storage account"
}

variable "dns_name" {
  type = string
}