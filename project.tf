module "host_vpc_project" {
  source  = "terraform-google-modules/project-factory/google"

  name                 = "host-vpc"
  random_project_id    = true
  org_id               = var.gcp_org_id
  billing_account      = var.gcp_billing_account_id
}