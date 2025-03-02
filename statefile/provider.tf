terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.23.0"
    }
  }
}

provider "google" {
  project     = var.project
  region      = var.region
}

terraform {
  backend "gcs" {
    bucket = "devops-terraform-statefile"  # Replace with your GCS bucket name
    prefix = "terraform/state"   # Optional: Folder path within the bucket
  }
}
