resource "random_pet" "pet" {
count = 5
 }

output "random_pet_kind" {
  value = random_pet.pet[*].id
}
