variable "project_id" {
  description = "this is project id"
  type = string
  default = "final-project-453412"
}


variable "region" {
  description = "this is region"
  type = string
  default = "us-central1"
}


variable "zone" { 
  description = "this is zone"
  type = string
  default = "us-central1-a"
}

variable "machine_type" {
  description = "machine type"
  type = string
  default = "e2-micro"
}

variable "service-account" {
  description = "this is service account"
  type = string
  default = "service-account-final-project@final-project-453412.iam.gserviceaccount.com"
}
