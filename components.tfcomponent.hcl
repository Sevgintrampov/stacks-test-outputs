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
