variable "project_name" {
  description = "Name of the Project"
  type        = string
  default = ""
}

output "project" {
  value = var.project_name
}

