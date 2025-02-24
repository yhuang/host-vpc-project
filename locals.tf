locals {
  gcp_billing_account_id         = data.tfe_outputs.gcp_bootstrap.values.gcp_billing_account_id
  gcp_folder_id                  = data.tfe_outputs.gcp_bootstrap.values.gcp_folder_id
  terraform_admin_gcp_project_id = data.tfe_outputs.gcp_bootstrap.values.terraform_admin_gcp_project_id

  host_vpc_project_id        = module.host_vpc_project.project_id
  shared_host_vpc_project_id = google_compute_shared_vpc_host_project.shared_host_project.id
  shared_host_vpc_id         = google_compute_network.host_vpc.id
}