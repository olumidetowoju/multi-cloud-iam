terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = var.gcp_project_id
  region  = var.gcp_region
  # Using ADC; no credentials= line
}

variable "gcp_project_id"  {}
variable "gcp_region"      {}
