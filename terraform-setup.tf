terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
    }
  }
}

provider "google" {
  project = var.terraform_admin_gcp_project_id
  region  = "global"
}
