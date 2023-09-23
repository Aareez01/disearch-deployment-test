# Define a variable using the environment variable directly
variable "tf_var_name" {
  type = string
}

output "tf_var_value" {
  value = var.tf_var_name
}

