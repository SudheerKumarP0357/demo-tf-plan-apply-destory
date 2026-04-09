terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.67.0"
    }
  }

  backend "azurerm" {
  }
}
provider "azurerm" {
    features {
      
    }
}

resource "azurerm_resource_group" "main" {
  name = var.resource_group_name
  location = var.location
}

variable "resource_group_name" {
  type = string
}

variable "location"{
    type = string
}


output "resource_group_name" {
    value = azurerm_resource_group.main.name
}

output "location" {
    value = azurerm_resource_group.main.location
}