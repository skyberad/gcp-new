variable "project_id" {}
variable "region" {
  default = "us-central1"
}
variable "zone" {
  default = "us-central1-a"
}

variable "network_name" {
  default = "simple-vpc"
}

variable "subnet_cidr" {
  default = "10.0.1.0/24"
}

variable "machine_type" {
  default = "e2-micro"
}

variable "image" {
  default = "debian-cloud/debian-11"
}

