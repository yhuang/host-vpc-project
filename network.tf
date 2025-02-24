resource "google_compute_shared_vpc_host_project" "shared_host_project" {
    project = local.host_vpc_project_id
}

resource "google_compute_network" "shared_host_vpc" {
  project = local.shared_host_vpc_project_id
  name    = "shared-host-network"
}

resource "google_compute_subnetwork" "shared_us_west1" {
  project       = local.shared_host_vpc_project_id
  name          = "shared-host-subnetwork-us-west1"
  ip_cidr_range = "10.2.0.0/16"
  region        = "us-west1"
  network       = local.shared_host_vpc_id
}