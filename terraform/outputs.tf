output "deployment_suffix" {
  description = "A deterministic suffix created for the fake deployment."
  value       = random_id.suffix.hex
}

output "deployment_tags" {
  description = "Common tags used in the mock Terraform configuration."
  value       = local.tags
}

output "deployment_message" {
  description = "Human-readable deployment summary."
  value       = "Terraform has prepared a mock deployment for ${var.project_name} in ${var.environment} (${var.region})."
}
