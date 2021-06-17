
variable "aks_service_principal_app_id" {
  description = "Application ID/Client ID  of the service principal. Used by AKS to manage AKS related resources on Azure like vms, subnets."
}

variable "aks_service_principal_client_secret" {
  description = "Secret of the service principal. Used by AKS to manage Azure."
}

variable "aks_service_principal_object_id" {
  description = "Object ID of the service principal."
}

variable "tenant_id" {
description = "contains the Tenant Id for service principal"

}
/*
variable "subscription_id" {
description = "contains the Subscription Id for service principal"

}
*/
variable "resource_group_name" {
description = "contains the name of the Resource Group"

}

variable "resource_group_location" {
description = "contains the location Resource Group of cluster"
default = "westeurope"
}
variable "cluster_name" {
description = "contains AKS Cluster Name"
default = "aksCluster1"
}



variable "aks_service_principal_app_id" {
  description = "Application ID/Client ID  of the service principal. Used by AKS to manage AKS related resources on Azure like vms, subnets."
}

variable "aks_service_principal_client_secret" {
  description = "Secret of the service principal. Used by AKS to manage Azure."
}

variable "aks_service_principal_object_id" {
  description = "Object ID of the service principal."
}

variable "virtual_network_name" {
  description = "Virtual network name"
  default     = "aksVirtualNetwork"
}

variable "virtual_network_address_prefix" {
  description = "VNET address prefix"
  default     = "15.0.0.0/8"
}

variable "aks_subnet_name" {
  description = "Subnet Name."
  default     = "kubesubnet"
}

variable "aks_subnet_address_prefix" {
  description = "Subnet address prefix."
  default     = "15.0.0.0/16"
}

variable "app_gateway_subnet_address_prefix" {
  description = "Subnet server IP address."
  default     = "15.1.0.0/16"
}

variable "app_gateway_name" {
  description = "Name of the Application Gateway"
  default = "AKSAppgateway"
}

variable "app_gateway_sku" {
  description = "Name of the Application Gateway SKU"
  default = "Standard_v2"
}

variable "app_gateway_tier" {
  description = "Tier of the Application Gateway tier"
  default = "Standard_v2"
}

variable "aks_name" {
  description = "AKS cluster name"
  default     = "aks-cluster1"
}
variable "aks_dns_prefix" {
  description = "Optional DNS prefix to use with hosted Kubernetes API server FQDN."
  default     = "aks"
}

variable "aks_agent_os_disk_size" {
  description = "Disk size (in GB) to provision for each of the agent pool nodes. This value ranges from 0 to 1023. Specifying 0 applies the default disk size for that agentVMSize."
  default     = 40
}

variable "aks_agent_count" {
  description = "The number of agent nodes for the cluster."
  default     = 3
}

variable "aks_agent_vm_size" {
  description = "VM size"
  default     = "Standard_D3_v2"
}

variable "kubernetes_version" {
  description = "Kubernetes version"
  default     = "1.11.5"
}

variable "aks_service_cidr" {
  description = "CIDR notation IP range from which to assign service cluster IPs"
  default     = "10.0.0.0/16"
}

variable "aks_dns_service_ip" {
  description = "DNS server IP address"
  default     = "10.0.0.10"
}

variable "aks_docker_bridge_cidr" {
  description = "CIDR notation IP for Docker bridge."
  default     = "172.17.0.1/16"
}

variable "aks_enable_rbac" {
  description = "Enable RBAC on the AKS cluster. Defaults to false."
  default     = "true"
}


variable "tags" {
  type = map(string)

  default = {
    source = "terraform"
  }
}