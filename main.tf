variable "projectName" {
  description = "Name of the Project"
  type        = string
  sensitive   = true
}

output "project" {
  value = var.projectName
}

