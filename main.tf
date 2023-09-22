variable "project_name" {
  description = "Name of the Project"
  type        = string
  sensitive   = true
}

output "project" {
  value = var.project_name
}

