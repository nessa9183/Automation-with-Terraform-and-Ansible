terraform {
  backend "azurerm" {
    resource_group_name  = "tfstaten01390171-RG-Lab7"
    storage_account_name = "tfstaten01390171lab7sa"
    container_name       = "tfstatefiles"
    key                  = "tfstate"
  }
}
