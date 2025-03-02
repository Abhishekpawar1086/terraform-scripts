terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.23.0"
    }
  }
}

provider "google" {
  # Configuration options
  project     = "my-project-id"
  region      = "us-central1"
}
