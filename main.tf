# Define a variable using the environment variable directly
variable "projectName" {
  type    = string
  default = var.TF_VAR_projectName
}

output "project" {
  value = var.projectName
}

