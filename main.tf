provider "azurerm" {
  # The "feature" block is required for AzureRM provider 2.x. 
  # If you are using version 1.x, the "features" block is not allowed.
  version = "~>2.0"
  features {}
  
}

terraform {
    required_providers {
      azurerm={
        source="hashicorp/azurerm"
        version="=2.46.0"
      }
    }
    backend "azurerm" {
    
  }
}


module "aks" {
 source="./modules/aks"  
 aks_service_principal_object_id = var.aks_service_principal_object_id
 aks_service_principal_app_id = var.aks_service_principal_app_id
 aks_service_principal_client_secret = var.aks_service_principal_client_secret
 resource_group_name = var.resource_group_name
 resource_group_location = var.resource_group_location
 cluster_name = var.cluster_name
 }

 

module "storageAccount" {
 source="./modules/storageAccount"  
 resource_group_name = var.resource_group_name
 resource_group_location = var.resource_group_location
 cluster_name = var.storage_account_name
 }
