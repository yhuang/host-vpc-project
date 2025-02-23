module "host_vpc_project" {
  source  = "terraform-google-modules/project-factory/google"

  name                 = "host-vpc"
  random_project_id    = true
  folder_id            = local.gcp_folder_id
  billing_account      = local.gcp_billing_account_id
}