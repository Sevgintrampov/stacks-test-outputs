required_providers {
  random = {
    source  = "hashicorp/random"
    version = "~> 3.7.2"
  }
}
provider "random" "this" {}
component "pet" {
  source = "./pet"
  providers = {
    random = provider.random.this
  }
}
output "pet_name" {
  description = "The pet names"
  type        = list(string) 
  value       = component.pet.random_pet_kind 
}
# This mimics a resource output
output "aks_cluster_data" {
  description = "Hardcoded complex map of cluster details"
  value = {
    "cluster-primary" = {
      current_kubernetes_version = {
        "1" = "1.33.5"
      }
      id = {
        "1" = "/subscriptions/123/resourceGroups/rg/providers/Microsoft.ContainerService/managedClusters/aks"
      }
    }
    "cluster-secondary" = {
      current_kubernetes_version = {
        "1" = "1.32.0"
      }
      id = {
        "1" = "/subscriptions/456/resourceGroups/rg/providers/Microsoft.ContainerService/managedClusters/aks-dr"
      }
    }
  }
}
