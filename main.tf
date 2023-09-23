variable "projectName" {
  type    = string
  default = "${var.projectName}"
}

output "project" {
  value = var.projectName
}

