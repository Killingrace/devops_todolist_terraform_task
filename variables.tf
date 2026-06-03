variable "resource_group_name" {
  type = string
  description = "Name of your resource group"
  default = "default_rg"
}

variable "location" {
  type = string
  description = "location for all resources"
  default = "West US"
}