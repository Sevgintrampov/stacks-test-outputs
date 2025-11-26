component "pet" {
  source = "./pet"
}
output "pet_name" {
  description = "The pet names"
  type        = list(string) 
  value       = component.pet.random_pet_kind 
}
