resource "google_compute_subnetwork" "this" {
  name          = "simple-subnet"
  ip_cidr_range = var.subnet_cidr
  region        = var.region
  network       = var.network_name
}
