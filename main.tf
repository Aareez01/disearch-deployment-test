# Define a variable using the environment variable directly
variable "projectName" {
  type = string
  default = getenv("TF_VAR_projectName")
}

output "project" {
  value = var.projectName
}

