provider "google" {
project = var.project
region = "us-central1"
}
variable "machine" {
type = string
default = "f1-micro"
}
variable "project" {
type = string
}
resource "google_compute_instance" "myvm" {
name = "myfirstvmm"
machine_type = var.machine
zone = "us-central1-a"
network_interface {
network = "default"
}
boot_disk {
initialize_params {
image = "debian-cloud/debian-10"
}
}
}
resource "google_compute_instance" "myvm1" {
name = "myfirstvmm1"
machine_type = var.machine
zone = "us-central1-a"
network_interface {
network = "default"
}
boot_disk {
initialize_params {
image = "debian-cloud/debian-10"
}
}
}

