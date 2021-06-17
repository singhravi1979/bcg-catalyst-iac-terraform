variable "resource_group_name" {
  description = "Name of the resource group."
  default=#{resource_group_name}
}

variable "resource_group_location" {
  description = "Location of the cluster."
   default=#{resource_group_location}
}

variable "cluster_name" {
  description = "Cluster Name"
   default=#{cluster_name}
}



variable "storage_account_name" {
  description = "Storage Account  Name"
   default=#{storage_account_name}
}



variable "aks_service_principal_app_id" {
  description = "Application ID/Client ID  of the service principal. Used by AKS to manage AKS related resources on Azure like vms, subnets."
    default=#{aks_service_principal_app_id}
}

variable "aks_service_principal_client_secret" {
  description = "Secret of the service principal. Used by AKS to manage Azure."
    default=#{aks_service_principal_client_secret}
}

variable "aks_service_principal_object_id" {
  description = "Object ID of the service principal."
    default=#{aks_service_principal_object_id}
}
