terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }
  backend "azurerm" {
    resource_group_name =  "duapp" # Can also be set via `ARM_ACCESS_KEY` environment variable.
    storage_account_name = "duappstg"                                 # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "containerdu"                                  # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "terraform.tfstate"                   # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
  }
}
  

provider "azurerm" {
    subscription_id = "29a3f52d-be41-4c3d-9f54-e5e0210dfe4b"
  features {
    
  }
}