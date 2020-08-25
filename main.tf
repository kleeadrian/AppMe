
provider "azurerm" {
  version = "=1.33.0"
}

terraform {
  backend "azurerm" {
    resource_group_name  = "storage-aea"
    storage_account_name = "testgit01"
    container_name       = "terraform01"
    key                  = "terraform.tfstate"
  }
}

resource "azurerm_resource_group" "rsg_app_plan" {
  name     = "hashicorptest"
  location = "Australia East"
}
