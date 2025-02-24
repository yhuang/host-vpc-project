output "project_id" {
  value = local.shared_host_vpc_project_id
}

output "shared_host_vpc" {
  value = {
    "id"   = local.shared_host_vpc_id
    "name" = local.shared_host_vpc_name
  }
}