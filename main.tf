variable "project_name" {
  description = "Name of the Project"
  type        = string
}

output "project" {
  value = var.project_name
}

