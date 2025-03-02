variable "project_id" {
  description = "this is project id"
  type = string
  default = "devops-practice-451710"
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
  default = "jenkins@devops-practice-451710.iam.gserviceaccount.com"
}

variable "machinetype" {
  description = "this is machine type"
  type        = string
  default = "e2-micro"
}

