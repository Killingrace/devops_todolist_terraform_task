# terraform {
#   backend "azurerm" {
#     storage_account_name = "testbackendtf2"
#     resource_group_name  = "mate-azure-task-12"
#     container_name       = "tfstate"
#     key                  = "terraform.tfstate"
#   }
# }