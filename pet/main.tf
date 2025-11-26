resource "random_pet" "pet" {
 }

output "random_pet_kind" {
  value = random_pet.pet[*].id
}
