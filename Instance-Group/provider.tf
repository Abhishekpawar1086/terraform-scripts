terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.24.0"
    }
  }
}

provider "google" {
  credentials = file("final-project-453412-c40ff94ed0c2.json")
  project     = var.project_id
  region      = var.region
}
