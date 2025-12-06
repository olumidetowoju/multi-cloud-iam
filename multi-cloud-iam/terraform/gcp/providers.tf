terraform {
  required_version = ">= 1.6.0"
  required_providers {
    google = { source = "hashicorp/google", version = "~> 5.0" }
  }
}
provider "google" {
  project     = var.gcp_project_id
  region      = var.gcp_region
  credentials = file(var.gcp_credentials_json_path)
}
variable "gcp_project_id"            { type = string }
variable "gcp_region"                { type = string }
variable "gcp_credentials_json_path" { type = string }
