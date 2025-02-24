resource "google_compute_network" "host_vpc" {
  name = "host-network"
}

resource "google_compute_subnetwork" "host_subnetwork_us_west1" {
  name          = "host-subnetwork-us-west1"
  ip_cidr_range = "10.2.0.0/16"
  region        = "us-west1"
  network       = google_compute_network.host_vpc.id
}