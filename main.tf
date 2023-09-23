# Define a variable using the environment variable directly
variable "projectName" {
  type = string
}

output "project" {
  value = var.projectName
}

