variable "project" {
  description = "this is project id"
  type        = string
  default = "devops-practice-451710"
}

variable "region" {
  description = "this is region"
  type        = string
  default = "us-central1"
}

variable "zone" {
  description = "this is zone"
  type        = string
  default = "us-central1-a"
}

variable "machinetype" {
  description = "this is machine type"
  type =  string
  default = "e2-micro"
}

variable "service" {
  description = "this is service acount"
  type = string
  default = "jenkins@devops-practice-451710.iam.gserviceaccount.com"
}
