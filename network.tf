resource "google_compute_network" "host_vpc" {
  project = local.host_vpc_project_id
  name    = "host-network"
}

resource "google_compute_subnetwork" "host_subnetwork_us_west1" {
  project       = local.host_vpc_project_id
  name          = "host-subnetwork-us-west1"
  ip_cidr_range = "10.2.0.0/16"
  region        = "us-west1"
  network       = local.host_vpc_id
}