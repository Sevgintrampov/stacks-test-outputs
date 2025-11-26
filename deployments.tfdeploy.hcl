deployment "simple" {
}
publish_output "simple_pet" {
  description = "The generated pet name for the simple deployment."
  value       = deployment.simple.pet_name
}
