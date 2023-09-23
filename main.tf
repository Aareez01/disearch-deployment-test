provider "google" {
  credentials = file(var.google_credentials_file)
  project    = var.project_id
  region     = var.region
}

variable "projectName" {
  description = "Name of the Project"
  type        = string
  sensitive   = true
}

output "project" {
  value = var.projectName
}

